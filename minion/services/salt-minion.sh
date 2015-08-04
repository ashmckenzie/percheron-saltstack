#!/bin/sh -e

exec 2>&1
exec /usr/bin/salt-minion 2>&1
