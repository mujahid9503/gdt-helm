#!/bin/sh

set -e # fail fast

if [ "${TASK_DEBUG}" = true ]; then
  set -x  # turn on debugging
fi

OUTPUT_DIR=${1:-got_token}
mkdir -p ${OUTPUT_DIR} ${HOME}/.aws

cat > ${HOME}/.aws/credentials <<EOF
[default]
aws_access_key_id=${AWS_ACCESS_KEY}
aws_secret_access_key=${AWS_SECRET_KEY}
EOF

# extract token and remove quotes from string value (jq -r) and save to file
aws --region ${AWS_REGION} eks get-token --cluster-name ${AWS_EKS_CLUSTER}| jq -r ".status.token" > ${OUTPUT_DIR}/token