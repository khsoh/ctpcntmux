#!/usr/bin/env bash

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)
# shellcheck disable=SC1091
source "${script_dir}/helpers.sh"

tmux set -g @catppuccin_user_status_directory "${script_dir}/userdefined"
# Tests that the default options are set correctly
tmux source "${script_dir}/../catppuccin_options_tmux.conf"
tmux source "${script_dir}/../catppuccin_tmux.conf"

print_option E:@catppuccin_status_ram