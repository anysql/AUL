#!/bin/bash
#

if [ "$2" != "" ]; then
  if [ "$1" = "sql" ]; then
     for fname in $(ls *_syntax.sql); do
         fname=`basename $fname .sql`
         if [ ! -e "${fname}.log" ]; then
            echo "Start SQL Script ${fname}.sql ..."
            sqlplus -L $2 @${fname}.sql > ${fname}.log
         fi
     done
  elif [ "$1" = "ctl" ]; then
     for fname in $(ls *_sqlldr.ctl) ; do
         fname=`basename $fname .ctl`
         if [ ! -e "${fname}.log" ]; then
            echo "Start SQL*Loader ${fname}.ctl ..."
            sqlldr userid=$2 control=${fname}.ctl log=${fname}.log
         fi
     done
  elif [ "$1" = "dmp" ]; then
     for fname in $(ls *.dmp) ; do
         fname=`basename $fname .dmp`
         if [ ! -e "${fname}.log" ]; then
            echo "Start Import ${fname}.dmp ..."
            imp $2 file=${fname}.dmp log=${fname}.log buffer=16777216 full=y ignore=y
         fi
     done
  else
     echo "Usage:"
     echo "      loadall.sh sql user/pass@tns"
     echo "      loadall.sh ctl user/pass@tns"
     echo "      loadall.sh dmp user/pass@tns"
  fi
else
  echo "Usage:"
  echo "      loadall.sh sql user/pass@tns"
  echo "      loadall.sh ctl user/pass@tns"
  echo "      loadall.sh dmp user/pass@tns"
fi
