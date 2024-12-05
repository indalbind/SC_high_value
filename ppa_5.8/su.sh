#!/bin/bash

grep "su: (to" myauth.log | grep "student on pts" | cut -d' ' -f7 | cut -d')' -f1