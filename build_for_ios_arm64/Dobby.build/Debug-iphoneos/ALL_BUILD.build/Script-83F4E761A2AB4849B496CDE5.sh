#!/bin/sh
make -C /Users/xjy/Dobby/build_for_ios_arm64 -f /Users/xjy/Dobby/build_for_ios_arm64/CMakeScripts/ALL_BUILD_cmakeRulesBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all
