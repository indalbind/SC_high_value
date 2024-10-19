#!/bin/bash

if grep -q "database_error" app.log; then
	time=$(date)
	echo "$time: Database error found" >> error_report.log
fi