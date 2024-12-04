#!/bin/bash
ls -l *.txt > textFiles.txt 2>noFiles.txt && echo found
