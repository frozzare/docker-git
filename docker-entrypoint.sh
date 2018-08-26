#!/bin/bash

cd /opt && echo "Howdy, $(git config user.name)!"
echo ""
cd /opt && exec git $@