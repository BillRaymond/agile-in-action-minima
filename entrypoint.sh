#!/bin/bash
# Exit immediately if a command exits with a non-zero status.
set -e

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

echo "#################################################"
echo "Starting the Jekyll Action"

echo "bundle install"
sh -c "bundle install"
echo "bundle update"
sh -c "bundle update"
echo "jekyll build --future"
sh -c "jekyll build --future"

echo "#################################################"
echo "Remove the /_site folder so it can be rebuilt"
echo "rm -rf $env_workspace_directory/_site"
rm -rf $env_workspace_directory/_site

echo "#################################################"
echo "configure git"
git config --global init.defaultBranch main
git config --global user.name "${USER_NAME}"
git config --global user.email "${MAIL}"
git submodule init
git submodule update

echo "#################################################"
echo "Add $env_workspace_directory/_site as submodule"
echo "git submodule add -f https://${GITHUB_TOKEN}@github.com/${USER_SITE_REPOSITORY}.git ./_site"
git submodule add -f https://${GITHUB_TOKEN}@github.com/${USER_SITE_REPOSITORY}.git ./_site
echo "cd $env_workspace_directory/_site"
cd $env_workspace_directory/_site
echo "git checkout main"
git checkout main
echo "git pull"
git pull
cd ..
sh -c "chmod 777 $env_workspace_directory/*"
sh -c "chmod 777 $env_workspace_directory/.*"

echo "#################################################"
echo "Now publishing"
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
echo "Published"
