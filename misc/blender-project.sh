#!/bin/bash

DIRNAME=$1
BLENDFILE="$1_00.blend"
MESSAGE="Created project directory for $1"

mkdir $DIRNAME &&
  mkdir $DIRNAME/blends &&
  mkdir $DIRNAME/textures &&
  mkdir $DIRNAME/reference &&
  mkdir $DIRNAME/renders &&
  echo $MESSAGE &&
  blender $DIRNAME/blends/$BLENDFILE
