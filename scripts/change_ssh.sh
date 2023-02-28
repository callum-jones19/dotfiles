#! /bin/dash
liq_is_active=$(find ~/.ssh/ -name "*liq*")
if [ -n "$liq_is_active" ]
then
  echo 'Deactivating personal SSH key; enabling LIQ SSH key'
  mv ~/.ssh/id_ed25519 ~/.ssh/id_ed25519_personal
  mv ~/.ssh/id_ed25519.pub ~/.ssh/id_ed25519_personal.pub
  mv ~/.ssh/id_ed25519_liq ~/.ssh/id_ed25519
  mv ~/.ssh/id_ed25519_liq.pub ~/.ssh/id_ed25519.pub
else
  echo 'Deactivating LIQ SSH key; enabling personal SSH key'
  mv ~/.ssh/id_ed25519 ~/.ssh/id_ed25519_liq
  mv ~/.ssh/id_ed25519.pub ~/.ssh/id_ed25519_liq.pub
  mv ~/.ssh/id_ed25519_personal ~/.ssh/id_ed25519
  mv ~/.ssh/id_ed25519_personal.pub ~/.ssh/id_ed25519.pub
fi
