#!/bin/bash

ls -l | grep -w 'd.*rwx' | awk '{print $9}'