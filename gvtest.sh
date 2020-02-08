#!/bin/bash
export PATH=/usr/local/cuda-9.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64:
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/wpilib/lib/:
cd /2013/GnomeVision
./good_settings.sh 0
./gstream_cv 1

