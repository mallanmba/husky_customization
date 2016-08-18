#!/bin/bash

FILE=rpgnd_sim_ws.rosinstall
URL=https://github.com/mallanmba/husky_customization/raw/rpgnd_sim/indigo/misc/${FILE}

echo "check ${FILE} is available..."
wget -q "$URL"
if [ $? -ne 0 ]; then
  echo "ERROR: wget failed to query ${URL}"
  exit
fi

echo "Ok, we can see remote ${FILE}."

rm -f ${FILE}
wget "$URL" &>/dev/null
ln -sf ${FILE} .rosinstall

echo "=================================="
echo "== run wstool..."
echo "=================================="

wstool up