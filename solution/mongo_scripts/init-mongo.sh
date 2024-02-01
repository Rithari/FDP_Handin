#!/bin/bash
set -e

# New user details
NEW_USER="rithari"
NEW_PASS="Ja32daZYJWWYdNmSifLX"
DATABASE="fdpdata"

# Restore BSON files into MongoDB
mongorestore --db $DATABASE /tmp/fdpdata/