#!/usr/bin/env bash

polybar-msg cmd quit

# Launch bar1
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar pulse1 2>&1 | tee -a /tmp/polybar1.log & disown
