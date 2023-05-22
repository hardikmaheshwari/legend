#!/bin/bash

source .env

# Build the image
docker build \
  --platform=linux/amd64 \
  --build-arg LEGEND_OMNIBUS_SDLC_VERSION=$LEGEND_OMNIBUS_SDLC_VERSION \
  --build-arg LEGEND_OMNIBUS_ENGINE_VERSION=$LEGEND_OMNIBUS_ENGINE_VERSION \
  --build-arg LEGEND_OMNIBUS_STUDIO_VERSION=$LEGEND_OMNIBUS_STUDIO_VERSION \
  \
  --build-arg LEGEND_OMNIBUS_GITLAB_PORT=$LEGEND_OMNIBUS_GITLAB_PORT \
  --build-arg LEGEND_OMNIBUS_GITLAB_ROOT_USER=$LEGEND_OMNIBUS_GITLAB_ROOT_USER \
  --build-arg LEGEND_OMNIBUS_GITLAB_ROOT_PASSWORD=$LEGEND_OMNIBUS_GITLAB_ROOT_PASSWORD \
  \
  --build-arg LEGEND_OMNIBUS_ENGINE_PORT=$LEGEND_OMNIBUS_ENGINE_PORT \
  --build-arg LEGEND_OMNIBUS_ENGINE_TEMP_DB_PORT=$LEGEND_OMNIBUS_ENGINE_TEMP_DB_PORT \
  \
  --build-arg LEGEND_OMNIBUS_SDLC_PORT=$LEGEND_OMNIBUS_SDLC_PORT \
  --build-arg LEGEND_OMNIBUS_SDLC_ADMIN_PORT=$LEGEND_OMNIBUS_SDLC_ADMIN_PORT \
  \
  --build-arg LEGEND_OMNIBUS_STUDIO_PORT=$LEGEND_OMNIBUS_STUDIO_PORT \
  \
  --build-arg LEGEND_OMNIBUS_NGINX_PORT=$LEGEND_OMNIBUS_NGINX_PORT \
  \
  --build-arg LEGEND_OMNIBUS_SUPERVISOR_PORT=$LEGEND_OMNIBUS_SUPERVISOR_PORT \
  --build-arg LEGEND_OMNIBUS_SUPERVISOR_USERNAME=$LEGEND_OMNIBUS_SUPERVISOR_USERNAME \
  --build-arg LEGEND_OMNIBUS_SUPERVISOR_PASSWORD=$LEGEND_OMNIBUS_SUPERVISOR_PASSWORD \
  \
  . -t legend-omnibus
