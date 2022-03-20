#!/bin/bash

basedir=$(pwd)
for file in $(ls)
do
  cd $basedir
  if [[ -d $file ]]
  then
    echo '[nmc] begin clean node_modules'

    du -hs $file

    cd $file
    pth=$("pwd")
    echo "[nmc] path is $pth"
    modules=$(/usr/bin/find $pth -name node_modules  -maxdepth 2)
    if [[ -n $modules ]]
    then
      echo "[nmc] find $modules"
      for module in $modules
      do
        echo "[nmc] cleaning $module"
        rm -rf $module
      done
    else
      echo not found any module dir in ${pth}
    fi
  fi
done
echo "[nmc] done"
