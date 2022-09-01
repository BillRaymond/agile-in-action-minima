#!/bin/bash
# -e Exit immediately if a command exits with a non-zero status
# -x Echo all the commands as they run, not just echos
set -e -x

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
echo "Define custom script files"
WF_GUEST_IMAGES_DIR="wf-00-guest-images-fi"
WF_GUEST_IMAGES_FILE="guest-featured-images.sh"
WF_GUEST_IMAGES_SITE=$env_workspace_directory/_site/$WF_GUEST_IMAGES_DIR/$WF_GUEST_IMAGES_FILE


echo "#################################################"
echo "workspace_directory: $env_workspace_directory"

sh "chmod 777 $env_workspace_directory/*"
sh "chmod 777 $env_workspace_directory/.*"

echo "#################################################"
echo "Build the Jekyll site so it can generate shell scripts that use Liquid"
sh "bundle update"
sh "jekyll build --future"

echo "#################################################"
echo "Build guest images"
echo "Since the Jekyll site has been built, the shell script was built from Liquid"

echo "Copy that script file to the workflow folder so it can be run"
cp -f $WF_GUEST_IMAGES_SITE $WF_GUEST_IMAGES_DIR
echo "Go into the $WF_GUEST_IMAGES_DIR folder"
cd $WF_GUEST_IMAGES_DIR
echo "Make the guest images script executable"
sh "chmod +x $WF_GUEST_IMAGES_FILE"
echo "run the guest images workflow"
sh "$WF_GUEST_IMAGES_FILE"
echo "return to the root Jekyll code folder"
cd ..
