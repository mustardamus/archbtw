#!/usr/bin/env bash

# stored in ~/.config/environment.d/10-env.conf
# this env's are available to systemd and the shell then
export $(/usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator)


# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/mustardamus/.lmstudio/bin"
# End of LM Studio CLI section

