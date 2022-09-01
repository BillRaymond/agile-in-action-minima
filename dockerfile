FROM ruby:alpine as jekyll

RUN echo "#################################################"
RUN echo "set default environment variables"
# default values for environment variables
# they can be overriden while building an image:
ARG workspace_directory=/github/workspace
ENV env_workspace_directory=$workspace_directory
ARG github_actor=""
ENV env_github_actor=${github_actor}
ARG github_token=""
ENV env_github_token=${github_token}
ARG user_site_repository=""
ENV env_user_site_repository=${user_site_repository}
ENV JEKYLL_ENV: production
WORKDIR ${env_workspace_directory}
RUN echo "env_workspace_directory"
RUN echo ${env_workspace_directory}
RUN echo "workspace_directory"
RUN echo ${workspace_directory}
RUN echo ${JEKYLL_ENV}
RUN echo ${WORKDIR}

RUN echo "#################################################"
RUN echo "Get the latest available Alpine packages"
# APK reference: https://wiki.alpinelinux.org/wiki/Package_management
RUN echo "apk update"
RUN apk update

RUN echo "#################################################"
RUN echo "Install packages required for this Jekyll environment"
RUN echo "apk add --no-cache build-base gcc bash cmake git imagemagick"
RUN apk add --no-cache build-base gcc bash cmake git imagemagick


RUN echo "#################################################"
RUN echo "Install bundler and jekyll"
RUN echo "gem install bundler jekyll"
RUN gem install bundler jekyll

RUN echo "#################################################"
RUN echo "Copy the GitHub repo to the Docker container"
RUN echo "COPY . ${env_workspace_directory}"
COPY . ${env_workspace_directory}

RUN echo "#################################################"
RUN echo "Run the entrypoint shell to perform additional steps"
RUN echo "Note: entrypoint should run on GitHub workflows"
RUN echo "ADD entrypoint.sh /"
ADD entrypoint.sh /
RUN echo "RUN chmod +x /entrypoint.sh"
RUN chmod +x /entrypoint.sh
RUN echo "ENTRYPOINT entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
