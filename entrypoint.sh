#!/bin/bash
# -e Exit immediately if a command exits with a non-zero status
# -x Echo all the commands as they run, not just echos
set -e -x

echo "#################################################"
echo "# This script performs the following steps:"
echo "#  - Configure GIT"
echo "#  - Build the Jekyll website"
echo "#  - Run an ImageMagick script to create useable thumbnails for guests"
echo "#  - Run an ImageMagick script to create featured images for posts"
echo "#  - Copy the newly generated Jekyll site to a GitHub Pages repo"
echo "#################################################"

echo "#################################################"
echo "configure git for GitHub"
echo "Run a command required by GitHub Actions"
git config --global --add safe.directory /github/workspace

echo "#################################################"
echo "configure the default branch name (used to suppress a warning)"
git config --global init.defaultBranch main

echo "#################################################"
echo "Configure required Git username and email"
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

git config --global user.name "${USER_NAME}"
git config --global user.email "${MAIL}"
echo "${USER_NAME} - ${MAIL}"


echo "#################################################"
echo "Finalize Git settings"
git submodule init
git submodule update

echo "#################################################"
echo "allow full access to files and folders"
echo "workspace_directory: $env_workspace_directory"
sh -c "chmod 777 $env_workspace_directory/*"
sh -c "chmod 777 $env_workspace_directory/.*"

echo "#################################################"
echo "Experimental Ruby 3.1 YJIT feature to improve liquid template rendering"
echo "If the setting is not available, it will be skipped"
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
WF_GUEST_IMAGES_DIR="$env_workspace_directory/wf-00-guest-images-fi" # the workflow folder the code will run from
WF_GUEST_IMAGES_SITE="$env_workspace_directory/_site/wf-00-guest-images-fi" #The location of the Jekyll-generated folder
WF_GUEST_IMAGES_FILE="guest-featured-images.sh" # the script filename
WF_GUEST_IMAGES_SCRIPT="$WF_GUEST_IMAGES_SITE/$WF_GUEST_IMAGES_FILE" # the full script folder and filename
WF_GUEST_IMAGES_OUTPUT_DIR="$env_workspace_directory/uploads/wf-guest-images-fi" # the script will output images to this folder

echo "#################################################"
echo "Define script variables for the Featured Image Creator script"
WF_FI_IMAGES_DIR="$env_workspace_directory/wf-01-create-fi" # the workflow folder the code will run from
WF_FI_IMAGES_SITE="$env_workspace_directory/_site/wf-01-create-fi" #The location of the Jekyll-generated script
WF_FI_IMAGES_FILE="create-featured-image.sh" # the script filename
WF_FI_IMAGES_SCRIPT="$WF_FI_IMAGES_SITE/$WF_FI_IMAGES_FILE" # the full script folder and filename
WF_FI_IMAGES_OUTPUT_DIR="$env_workspace_directory/uploads/wf-featured-images" # the script will output images to this folder

echo "#################################################"
echo "Create the workflow OUPTUT folders if they do not exist"

if [ ! -d $WF_GUEST_IMAGES_OUTPUT_DIR ]; then
  mkdir -p $WF_GUEST_IMAGES_OUTPUT_DIR;
fi

if [ ! -d $WF_FI_IMAGES_OUTPUT_DIR ]; then
  mkdir -p $WF_FI_IMAGES_OUTPUT_DIR;
fi

echo "#################################################"
echo "Make the workflow scripts executable"
sh -c "chmod +x $WF_GUEST_IMAGES_SCRIPT"
sh -c "chmod +x $WF_FI_IMAGES_SCRIPT"

echo "#################################################"
echo "Run the guest images workflow script"
cd $WF_GUEST_IMAGES_DIR
sh $WF_GUEST_IMAGES_SCRIPT
cd ..

echo "#################################################"
echo "Run the featured image workflow script"
echo "This script contains artifacts in the folder, so"
echo "cd into the workflow folder and then cd .. after"
cd $WF_FI_IMAGES_DIR
sh $WF_FI_IMAGES_SCRIPT
cd ..

echo "#################################################"
echo "Publish all images created by the scripts"
git add uploads/\*
git status

echo "#################################################"
echo "Commit changes from Jekyll build"
echo "Use --quiet so the commit does not trigger another workflow"
git diff-index --quiet HEAD || echo "Commit changes." && git commit -m 'Jekyll build from Action - add images' && echo "Push." && git push origin
git reset --hard

echo "#################################################"
echo "The site was built once so scripts can create new images"
echo "remove _site so Jekyll can create a clean build a second time"
rm -rf $env_workspace_directory/_site

echo "#################################################"
echo "Add $env_workspace_directory/_site as submodule"
echo "git submodule add -f https://${GITHUB_TOKEN}@github.com/${USER_SITE_REPOSITORY}.git ./_site"
git submodule add -f https://${GITHUB_TOKEN}@github.com/${USER_SITE_REPOSITORY}.git ./_site
cd $env_workspace_directory/_site
git checkout main
git pull

echo "#################################################"
echo "Added submodule"
cd ..
echo "sh -c "chmod 777 $env_workspace_directory/*""
sh -c "chmod 777 $env_workspace_directory/*"
echo "sh -c "chmod 777 $env_workspace_directory/.*""
sh -c "chmod 777 $env_workspace_directory/.*"

echo "#################################################"
echo "The script ran and created new files"
echo "So therefore, rebuild the Jekyll site"
sh -c "bundle exec jekyll build --future"

echo "#################################################"
echo "Second Jekyll build done"

echo "#################################################"
echo "Now publishing to remote repo"
ls -ltar
cd $env_workspace_directory/_site
ls -ltar
git log -2
git remote -v

# Create CNAME file for redirect to this repository
if [[ "${CNAME}" ]]; then
  echo ${CNAME} > CNAME
fi

touch .nojekyll
echo "Add all files."
git add -f -A -v
git status

git diff-index --quiet HEAD || echo "Commit changes." && git commit -m 'Jekyll build from Action' && echo "Push." && git push origin

echo "#################################################"
echo "Published to remote repo"
