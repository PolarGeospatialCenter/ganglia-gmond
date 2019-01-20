#!/bin/bash

confd -onetime -backend env
exec gmond -f -d 1
