#!/bin/bash
#
# Publish out/protocol.json from the development branch to the master
# branch, which serves as the consumable artifact branch (usable as a
# git submodule by other projects).
#
# The master branch is expected to be checked out in a separate git
# worktree, so no branch switching is needed. Create one with:
#
#    git worktree add ../moduleprotocol-upstream master
#
# The "Version" field in protocol.json is a run-date stamp, not a
# content version: every parser run bumps it even when nothing else
# changed. Publishing that alone would add noise commits to the
# artifact history, so a Version-only difference is skipped.
#
# Usage: bin/publish_to_master.sh [-n] [--no-push] [-m <message>]
#
#    -n, --dry-run   show what would happen, change nothing
#        --no-push   commit but do not push
#    -m <message>    commit message

set -euo pipefail

DRY_RUN=""
NO_PUSH=""
MESSAGE="protocol.json copied from development branch"

while [ $# -gt 0 ] ; do
   case "$1" in
      -n|--dry-run) DRY_RUN="yes" ; shift ;;
      --no-push)    NO_PUSH="yes" ; shift ;;
      -m)           MESSAGE="${2:?-m needs a message}" ; shift 2 ;;
      -h|--help)    sed -n '3,25p' "$0" | sed 's/^# \?//' ; exit 0 ;;
      *)            echo "Error: unknown option $1" >&2 ; exit 2 ;;
   esac
done

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(dirname "$SCRIPT_DIR")"
SOURCE="$REPO_ROOT/out/protocol.json"

# ---------------------------------------------------------------- checks

if [ ! -f "$SOURCE" ] ; then
   echo "Error: $SOURCE not found. Run bin/parse_protocol.pl first." >&2
   exit 1
fi

# Locate the worktree that has master checked out.
WORKTREE="$(git -C "$REPO_ROOT" worktree list --porcelain | awk '
   /^worktree /              { path = substr($0, 10) }
   /^branch refs\/heads\/master$/ { print path ; exit }
')"

if [ -z "$WORKTREE" ] ; then
   echo "Error: no worktree has branch 'master' checked out." >&2
   echo "       Create one with: git worktree add ../moduleprotocol-upstream master" >&2
   exit 1
fi

TARGET="$WORKTREE/protocol.json"

# A malformed artifact breaks every consumer of the submodule, so make
# sure it parses before it is published.
if ! perl -MJSON -e '
   local $/ ;
   open my $fh, "<", $ARGV[0] or die "cannot open: $!\n" ;
   decode_json(<$fh>) ;
' "$SOURCE" 2>/dev/null ; then
   echo "Error: $SOURCE is not valid JSON, refusing to publish." >&2
   exit 1
fi

if [ -n "$(git -C "$REPO_ROOT" status --porcelain -- out/protocol.json)" ] ; then
   echo "   Warning: out/protocol.json has uncommitted changes on development;"
   echo "            publishing an artifact that is not committed on the source branch."
fi

if [ -n "$(git -C "$WORKTREE" status --porcelain)" ] ; then
   echo "Error: worktree $WORKTREE is not clean, refusing to commit." >&2
   git -C "$WORKTREE" status --short >&2
   exit 1
fi

# --------------------------------------------------- Version-only check

# The top level Version is the only key holding a bare 8 digit date;
# nested ones look like "Version" : "edition 2".
strip_version() {
   grep -vE '^   "Version" : "[0-9]{8}",?$' "$1"
}

if [ -f "$TARGET" ] && diff -q <(strip_version "$TARGET") <(strip_version "$SOURCE") >/dev/null ; then
   OLD="$(grep -oE '"Version" : "[0-9]{8}"' "$TARGET" | tail -1)"
   NEW="$(grep -oE '"Version" : "[0-9]{8}"' "$SOURCE" | tail -1)"
   if [ "$OLD" = "$NEW" ] ; then
      echo "Nothing to publish: master is already identical."
   else
      echo "Nothing to publish: only the Version run-date differs ($OLD -> $NEW),"
      echo "                    the protocol data is unchanged."
   fi
   exit 0
fi

# ---------------------------------------------------------------- publish

echo "Publishing $SOURCE"
echo "        -> $TARGET"

if [ -f "$TARGET" ] ; then
   ADDED="$(diff <(strip_version "$TARGET") <(strip_version "$SOURCE") | grep -c '^>' || true)"
   REMOVED="$(diff <(strip_version "$TARGET") <(strip_version "$SOURCE") | grep -c '^<' || true)"
   echo "   $ADDED line(s) added, $REMOVED line(s) removed (Version line excluded)"
fi

if [ -n "$DRY_RUN" ] ; then
   echo "Dry run: nothing copied, committed or pushed."
   exit 0
fi

cp "$SOURCE" "$TARGET"
git -C "$WORKTREE" add protocol.json
git -C "$WORKTREE" commit -m "$MESSAGE"

if [ -n "$NO_PUSH" ] ; then
   echo "Committed on master, not pushed (--no-push)."
   echo "Push with: git -C $WORKTREE push origin master"
else
   git -C "$WORKTREE" push origin master
fi
