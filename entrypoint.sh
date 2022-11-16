#!/bin/sh -l

echo "Hello $INPUT_MYINPUT"   # uses the who-to-greet input variable to print "Hello [who-to-greet]" in the log file
memory=$(cat /proc/meminfo)
time=$(date)      # gets the current time and sets it as an output variable that actions running later in a job can use.
echo "::set-output name=time::$memory" # sets the action's output parameter using the workflow syntax
