#!/bin/sh
rc-service redis start
rc-service redis stop
echo $@