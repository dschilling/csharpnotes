#!/bin/bash
mkdir /home/eck/Desktop
pushd javanotes9
./export-source.sh
source ./BUILD-env.sh
popd
pushd /home/eck/Desktop/csharpnotes-1.0-source/javanotes9
../BUILD-$1.sh
popd