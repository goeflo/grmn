#!/bin/bash
docker build -t garminexport .   
docker run --env-file /home/florian/work/grmn/env.list -v /home/florian/work/grmn/activities:/tmp/activities garminexport
