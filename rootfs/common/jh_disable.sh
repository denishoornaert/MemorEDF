#!/bin/bash

source common/jailhouse.config

./bombs_read.sh -m 100000
./kill_bombs.sh

$jh_path/tools/jailhouse cell memguard 0 0 0
$jh_path/tools/jailhouse disable
