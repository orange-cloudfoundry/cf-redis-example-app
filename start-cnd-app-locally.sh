#!/usr/bin/env bash
set -e

source local.env

source ./setup-prerequisite.sh

./vcap-services-template-reformat.sh >vcap-service.env
cat vcap-service.env
echo ""
echo "Starting app using ${CNB_IMAGE_NAME}"
#docker run -it --rm -e PORT=8081 --env-file vcap-service.env -p 8080:8081 --name "cnb-app" ${CNB_IMAGE_NAME}
docker run --rm -e PORT=80 --env-file vcap-service.env -p 8080:80 --name "cnb-app" ${CNB_IMAGE_NAME}
#docker run -d --rm -e PORT=8081 --env-file vcap-service.env -p 8080:8081 --name "cnb-app" ${CNB_IMAGE_NAME}