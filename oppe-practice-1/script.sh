#!/bin/bash
chmod u+x run.sh
if ./run.sh &>/dev/null ; then echo SUCCESS
else echo FAIL
fi