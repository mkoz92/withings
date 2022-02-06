#!/usr/bin/env bash

cd "$(dirname "$0")"

set -e

rm -rf _virtualenv
virtualenv _virtualenv
source _virtualenv/bin/activate

pip install -r requirements.txt
