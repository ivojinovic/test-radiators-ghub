#!/bin/bash
set -x
set -e

echo "STARTING STATUS CHECK"

cd pipeline_job_resource

job_file_name="jarvis_api.static-analysis-dev-branches.txt"
cat $job_file_name

line=$(head -n 1 $job_file_name)
status=$(echo $line | cut -d " " -f 4)
if [[ $status = "succeeded" ]]
then
  exit 0;
fi

exit 1
