#!/bin/bash

# Attempt to connect to MySQL
if mysqladmin ping -h"$DB_HOST" -u"$DB_USER" -p"$DB_PASSWORD" &>/dev/null; then
    echo "MySQL is up and running"
    exit 0  # Exit with success status
else
    echo "MySQL is unreachable"
    exit 1  # Exit with failure status
fi
