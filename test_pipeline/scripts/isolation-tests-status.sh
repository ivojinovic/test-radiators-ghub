#!/bin/bash
set -x
set -e

echo "STARTING TEST"

cd pipeline_job_resource

cat jarvis_api_sa_dev.txt

line=$(head -n 1 filename)
if [[ $line == *"succeeded"* ]]
then
  exit 0;
fi

exit 1
