#!/bin/bash
set -ueo pipefail

cd ~/syh/Poseidon/tools/thulc/

for AMR in "${TRAIN_FILE}" "${DEV_FILE}" "${TEST_FILE}"
do
    java -jar ${thulc_JAR} -t2s -seg_only -deli " " $*> "${AMR}.snt.token"
done

