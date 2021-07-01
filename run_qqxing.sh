#!/usr/bin/env bash

last_run_time=1625137501
curr_run_time=`date +%s`
seconds=$((121*60))

if [[ $((curr_run_time - last_run_time)) -ge $seconds ]]
then
  bash /data/data/com.termux/files/home/storage/shared/jd/jd.sh jd_wind8_wind_qqxing now
  sed -i '3 s/[0-9][0-9]*/'"$curr_run_time"'/' /data/data/com.termux/files/home/storage/shared/jd/run_qqxing.sh
fi