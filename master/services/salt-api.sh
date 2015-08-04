#!/bin/sh -e

exec 2>&1
exec /usr/bin/salt-api 2>&1
