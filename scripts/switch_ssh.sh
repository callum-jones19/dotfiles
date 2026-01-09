#!/bin/bash

if [[ -e $HOME/.ssh/id_ed25519_personal ]]; then
  # We are currently using LIQ ssh, switch to personal
  echo 'Switching active SSH keys to personal keys...'
  mv $HOME/.ssh/id_ed25519 $HOME/.ssh/id_ed25519_liq
  mv $HOME/.ssh/id_ed25519.pub $HOME/.ssh/id_ed25519_liq.pub
  mv $HOME/.ssh/id_ed25519_personal $HOME/.ssh/id_ed25519
  mv $HOME/.ssh/id_ed25519_personal.pub $HOME/.ssh/id_ed25519.pub
else
  # We are currently using personal ssh, switch to LIQ
  echo 'Switching active SSH keys to LIQ keys...'
  mv $HOME/.ssh/id_ed25519 $HOME/.ssh/id_ed25519_personal
  mv $HOME/.ssh/id_ed25519.pub $HOME/.ssh/id_ed25519_personal.pub
  mv $HOME/.ssh/id_ed25519_liq $HOME/.ssh/id_ed25519
  mv $HOME/.ssh/id_ed25519_liq.pub $HOME/.ssh/id_ed25519.pub
fi
