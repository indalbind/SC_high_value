#!/bin/bash

grep 'New session .* of user guest.$' myauth.log | sort -k1,1M -k2,2n -k3,3n | tail -n 1 | cut -d' ' -f1,2,3
