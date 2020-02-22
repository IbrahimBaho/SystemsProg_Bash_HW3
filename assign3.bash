#!/bin/bash

    awk -v curTime="`date --date='Aug 16 2018 23:05'`" -f assign3.awk $1 
