#!/bin/bash

echo "[AniB]: ubuntu/profile.sh"

if [ -f $DIR/ubuntu/aliases.sh ]; then
    . $DIR/ubuntu/aliases.sh
fi
