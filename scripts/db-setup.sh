#!/bin/sh

export PGUSER="postgres"

psql -c "CREATE DATABASE inventory"

# shellcheck disable=SC1073
psql inventory -c "CREATE EXTENSION IF NOT EXISTS \"uuid-ossp\";"