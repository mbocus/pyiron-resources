#!/bin/bash
ml purge
module load RASPA2/2.0.41-foss-2020b
export RASPA_DIR=${EBROOTRASPA2}
${RASPA_DIR}/bin/simulate
