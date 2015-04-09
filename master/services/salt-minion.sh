#!/bin/bash

exec 2>&1

exec salt-minion -l debug 2>&1
