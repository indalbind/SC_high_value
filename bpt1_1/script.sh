#!/bin/bash

for dept in Dept{1..5}; do
	for team in Team{A..C}; do
		for project in {1..10}; do
			touch "./$dept/$team/project$project"
		done
	done
done
