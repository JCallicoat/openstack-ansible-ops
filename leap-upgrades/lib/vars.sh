#!/usr/bin/env bash

# Copyright 2017, Rackspace US, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

## Generic debug var. This will log actions to /tmp/run_debug
export DEBUG="${DEBUG:-TRUE}"
export DEBUG_PATH="${DEBUG_PATH:-/tmp/run_debug}"

## Script Vars ---------------------------------------------------------------
export JUNO_RELEASE="${JUNO_RELEASE:-eol-juno}"
export KILO_RELEASE="${KILO_RELEASE:-eol-kilo}"
export LIBERTY_RELEASE="${LIBERTY_RELEASE:-liberty-eol}"
export MITAKA_RELEASE="${MITAKA_RELEASE:-mitaka-eol}"
export NEWTON_RELEASE="${NEWTON_RELEASE:-14.2.7}"

## Environment Vars ------------------------------------------------------------------
export MAIN_PATH="${MAIN_PATH:-/opt/openstack-ansible}"
export SYSTEM_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/../ && pwd )"
export UPGRADE_UTILS="${UPGRADE_UTILS:-${SYSTEM_PATH}/upgrade-utilities}"

# If the the OpenStack-Ansible system venvs have already been built elsewhere and can be downloaded
#  set the "VENV_URL" environment variable to the path where the venvs are kept. When running stage1
#  this URL will be used to download the release built VENVS in the following format.
#  ${VENV_URL}/openstack-ansible-RELEASE_VERSION.tgz
export VENV_URL="${VENV_URL:-https://rpc-repo.rackspace.com/venvs/leap-bundles}"

export VALIDATE_UPGRADE_INPUT="${VALIDATE_UPGRADE_INPUT:-TRUE}"
export UPGRADES_TO_TODOLIST="${UPGRADES_TO_TODOLIST:-''}"
export CODE_UPGRADE_FROM=""

## Ansible debugging
export LEAP_TIMESTAMP=$(date +%s)
export ANSIBLE_LOG_PATH="/opt/leap42/ansible-${LEAP_TIMESTAMP}.log"
