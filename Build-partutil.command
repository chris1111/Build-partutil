#!/bin/bash
# script build partutil
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"
rm -rf ./Script-EFIFolder/partutil
rm -rf /Private/tmp/partutil.dst
rm -rf ./partutil/build
xcodebuild -project ./partutil/partutil.xcodeproj -alltargets -configuration Release
Sleep 2
mv /Private/tmp/partutil.dst/usr/local/bin/partutil ./Script-EFIFolder
Sleep 1
rm -rf /Private/tmp/partutil.dst
rm -rf ./partutil/build
