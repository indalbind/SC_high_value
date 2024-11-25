#!/bin/bash

echo $(md5sum $1 | awk '{print $1}')
