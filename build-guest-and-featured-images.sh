#!/bin/bash
# -e Exit immediately if a command exits with a non-zero status
# -x Echo all the commands as they run, not just echos

cd /workspaces/agile-in-action-minima

# ############################################################
echo "build guest images based on"
echo "wfRecreateGuestImages in _data/configs.yml"
cd wf-00-guest-images-fi
sh ../_site/wf-00-guest-images-fi/guest-featured-images.sh
cd ..

# ############################################################
echo "build featured images based on"
echo "wfRecreateFeaturedImages in _data/configs.yml"
cd wf-01-create-fi
sh ../_site/wf-01-create-fi/create-featured-image.sh
cd ..
