#!/bin/bash

array=(common mysql nginx php wordpress)
for direct in ${array[*]}
do
    mkdir -p roles/$direct/tasks
    mkdir -p roles/$direct/templates
    touch roles/$direct/tasks/main.yml
done

