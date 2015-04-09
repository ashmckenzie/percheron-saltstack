#!/bin/bash

exec 2>&1

exec salt-master -l debug 2>&1
