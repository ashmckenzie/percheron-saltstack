#!/bin/sh -e

exec 2>&1
exec /usr/bin/salt-master 2>&1
