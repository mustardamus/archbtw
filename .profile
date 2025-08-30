#!/usr/bin/env bash

# stored in ~/.config/environment.d/10-env.conf
# this env's are available to systemd and the shell then
export $(/usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator)

