#!/usr/bin/env bash

set -e

python3 -m 'virtualenv' env
source env/bin/activate
PYTHON_MAJOR_VERSION="$(python --version | cut -d' ' -f2 | cut -d'.' -f1)"
PYTHON_MINOR_VERSION="$(python --version | cut -d' ' -f2 | cut -d'.' -f2)"
pip install -r requirements/base.txt
ANSIBLE_STRATEGY_PLUGINS="./env/lib/python${PYTHON_MAJOR_VERSION}.${PYTHON_MINOR_VERSION}/site-packages/ansible_mitogen/plugins" ansible-playbook playbook.yml
