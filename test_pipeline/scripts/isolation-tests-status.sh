#!/bin/bash
set -x
set -e

echo "STARTING TEST"

cd pipeline_job_resource

line=$(head -n 1 jarvis_api_sa_dev.txt)
if [[ $line == *"succeeded"* ]]
then
  exit 0;
fi

exit 1
