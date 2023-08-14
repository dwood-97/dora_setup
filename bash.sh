#!/bin/bash

mkdir roles
cd roles

# Create individual role directories
for role in docker postgresql rust java minikube; do
    mkdir $role
    cd $role
    mkdir tasks handlers files templates
    touch tasks/main.yml handlers/main.yml
    cd ..
done