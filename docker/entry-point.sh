#!/bin/bash
mkdir /home/eck/Desktop
pushd csharpnotes1
./export-source.sh
source ./BUILD-env.sh
popd
pushd /home/eck/Desktop/csharpnotes-1.0-source/csharpnotes1
../BUILD-$1.sh
popd