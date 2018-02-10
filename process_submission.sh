#!/bin/bash

cd /src/astrometry/net
export PYTHONPATH=${PYTHONPATH}:.
for ((;;)); do su -c "python process_submissions.py --solve-locally=$(pwd)/solvescript.sh  -s 4 -j 16 > dj.log 2>&1" nova; sleep 1; done


