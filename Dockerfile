FROM ubuntu:latest

RUN echo "#################################################"
RUN echo "set default environment variables"
RUN echo "ARG is accessible only when building the image"
RUN echo "ENV is accessible before and after building the image"
RUN echo "yyy_workspace_directory is the GitHub main branch"
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

# Get the latest APT packages
RUN apt-get update -y

# Install Jekyll and this repo's dependencies with a -y to answer "yes" for any prompts
# RUN apt-get install -y gcc bash cmake git imagemagick ruby-full

# Install Jekyll prerequisites
RUN apt-get install -y git ruby-full build-essential zlib1g-dev

# Install prerequisites for this repo
RUN apt-get install -y imagemagick

# Install Jekyll
RUN gem install jekyll bundler



# RUN echo "env_workspace_directory"
# RUN echo ${env_workspace_directory}
# RUN echo "workspace_directory"
# RUN echo ${workspace_directory}

# # install both bundler 1.x and 2.x incase you're running
# # old gem files
# # https://bundler.io/guides/bundler_2_upgrade.html#faq
# RUN echo "gem update bundler && gem install bundler jekyll"
# RUN gem update bundler && gem install bundler jekyll

# ENV JEKYLL_ENV: production
# WORKDIR ${env_workspace_directory}

# RUN echo "COPY . ${env_workspace_directory}"
# COPY . ${env_workspace_directory}

# RUN echo "apk add --no-cache git"
# RUN apk add --no-cache git

# RUN echo "ADD entrypoint.sh /"
# ADD entrypoint.sh /
# RUN echo "RUN chmod +x /entrypoint.sh"
# RUN chmod +x /entrypoint.sh

# RUN echo "ENTRYPOINT entrypoint.sh"
# ENTRYPOINT ["/entrypoint.sh"]

