#!/usr/bin/env bash

if [ -z "$EDK_TOOLS_PATH" ]
then
  export EDK_TOOLS_PATH=`pwd`/BaseTools
fi
if [ -z "$WORKSPACE" ]
then
  . BaseTools/BuildEnv > /dev/null
else
  . $WORKSPACE/BaseTools/BuildEnv > /dev/null
fi
if [ $? -ne 0 ]
then
  echo "Failed to setup build environment"
  exit -1
fi

build $*

