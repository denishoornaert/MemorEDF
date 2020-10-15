#!/bin/bash

# Script to sync local changes and remote code of jailhouse

rsync -a --progress ./ zcu102:jailhouse-rt
