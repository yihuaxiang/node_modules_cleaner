#!/bin/bash

basedir=$(pwd)
for file in $(ls)
do
  cd $basedir
  if [[ -d $file ]]
  then
    echo '----------------'
    echo file is $file
    echo pwd is $("pwd")

    du -hs $file

    cd $file
    pth=$("pwd")
    echo pth is $pth
    modules=$(/usr/bin/find $pth -name node_modules  -maxdepth 2)
    if [[ -n $modules ]]
    then
      echo modules is $modules
      for module in $modules
      do
        echo module is $module
        rm -rf $module
      done
    else
      echo not found any module dir in ${pth}
    fi
  fi
done
