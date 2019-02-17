#!/usr/bin/env bash

# nginx-module-vts
dir=nginx-module-vts
if [ ! -d $dir ]; then
  git clone git://github.com/vozlt/nginx-module-vts.git
else
  cd $dir
  git pull
  cd -
fi
