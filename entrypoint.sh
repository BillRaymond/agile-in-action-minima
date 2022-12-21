#!/bin/bash
# -e Exit immediately if a command exits with a non-zero status
# -x Echo all the commands as they run, not just echos
set -e -x

echo "#################################################"
echo "This script performss the following steps:"
echo "- Build the Jekyll website"
echo "#  - Run an ImageMagick script to create useable thumbnails for guests"
echo "#  - Run an ImageMagick script to create featured images for posts"
echo "#  - Copy the newly generated Jekyll site to a GitHub Pages repo"
echo "#################################################"

# configure git
echo "Run a command required by GitHub Actions"
git config --global --add safe.directory /github/workspace

# if arguments aren't set, the environment variables are expected to be set
if [ -z "${GITHUB_ACTOR}" ];
then
GITHUB_ACTOR=$env_github_actor
fi

if [ -z "${GITHUB_TOKEN}" ];
then
GITHUB_TOKEN=$env_github_token
fi

if [ -z "${USER_SITE_REPOSITORY}" ];
then
USER_SITE_REPOSITORY=$env_user_site_repository
fi

USER_NAME="${GITHUB_ACTOR}"
MAIL="${GITHUB_ACTOR}@users.noreply.github.com"

echo "${USER_NAME} - ${MAIL}"

git submodule init
git submodule update

echo "#################################################"
echo "workspace_directory: $env_workspace_directory"
echo "allow full access to files and folders"

sh -c "chmod 777 $env_workspace_directory/*"
sh -c "chmod 777 $env_workspace_directory/.*"

echo "#################################################"
echo "Experimental Ruby 3.1 YJIT feature to improve liquid template rendering"

export RUBYOPT="--enable=yjit"

echo "#################################################"
echo "Install and update bundles"

sh -c "bundle install"
sh -c "bundle update"

echo "#################################################"
echo "Build the Jekyll website, including future posts"
echo "future allows for the generation of upcoming posts,"
echo "guests, and featured images"

sh -c "bundle exec jekyll build --future"

echo "#################################################"
echo "Define script variables for the Guest Image Creator script"
WF_GUEST_IMAGES_DIR="$env_workspace_directory" # the workflow folder the code will run from
WF_GUEST_IMAGES_SITE="$env_workspace_directory/_site/wf-00-guest-images-fi" #The location of the Jekyll-generated folder
WF_GUEST_IMAGES_FILE="guest-featured-images.sh" # the script filename
WF_GUEST_IMAGES_SCRIPT="$WF_GUEST_IMAGES_SITE/$WF_GUEST_IMAGES_FILE" # the full script folder and filename
WF_GUEST_IMAGES_OUTPUT_DIR="$env_workspace_directory/uploads/wf-guest-images-fi" # the script will output images to this folder

echo "#################################################"
echo "Run a script to build guest images"

echo "Create the workflow OUPTUT folder if it does not exist"
if [ ! -d $WF_GUEST_IMAGES_OUTPUT_DIR ]; then
  mkdir -p $WF_GUEST_IMAGES_OUTPUT_DIR;
fi
echo "Make the script that creates the guest images executable"
sh -c "chmod +x $WF_GUEST_IMAGES_SCRIPT"
echo "Run the guest images workflow"
sh $WF_GUEST_IMAGES_SCRIPT
