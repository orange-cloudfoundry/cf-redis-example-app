#!/usr/bin/env bash
set -e

echo "=== Setup pre-requisites ==="
container_redis_id=$(docker run -d -p $SERVICE_PORT:$SERVICE_PORT --name "redis-service" --health-cmd "redis-cli ping" --health-interval 10s --health-timeout 5s --health-retries 5 ${SERVICE_IMAGE})
redis_container_name="$(docker ps -f "ancestor=$SERVICE_IMAGE" --format "{{.Names}}")"
CONTAINER_REDIS_IP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $redis_container_name)
echo "CONTAINER_REDIS_IP: $CONTAINER_REDIS_IP"
echo "Set default password"
docker exec -i redis-service redis-cli CONFIG SET requirepass "$SERVICE_PASSWORD"
export SERVICE_HOST=$CONTAINER_REDIS_IP
