#!/bin/sh -l
set -uo pipefail

autosed $*
echo ::set-output name=exit-code::$?