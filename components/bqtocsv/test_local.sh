#!/bin/bash
#bash ../build_container.sh

PROJECT_ID=$(gcloud config config-helper --format "value(configuration.properties.core.project)")
docker run -t gcr.io/tenacious-camp-267214/babyweight-pipeline-bqtocsv:latest \
       --project ${PROJECT_ID} --mode local --bucket gcp-mlops-demo-opi

