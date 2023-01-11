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
RUN echo "apt-get update"
RUN apt-get update

# # From: https://phoenixnap.com/kb/install-ruby-ubuntu
# RUN apt-get -y install git curl autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev
# RUN curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
# RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
# RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc


# Install Jekyll pre-requisites
RUN apt-get -y install git rbenv
RUN curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
RUN rbenv install 3.1.2
RUN rbenv local 3.1.2
RUN eval "$(rbenv init -)"

# # Install Jekyll and bundler
# RUN echo "gem install jekyll bundler"
RUN gem install jekyll bundler

# # Install custom prerequisites for this repo
# RUN echo "apt-get install -y imagemagick"
# RUN apt-get install -y imagemagick

# RUN echo "COPY . ${env_workspace_directory}"
# COPY . ${env_workspace_directory}

# RUN echo "ADD entrypoint.sh /"
# ADD entrypoint.sh /
# RUN echo "RUN chmod +x /entrypoint.sh"
# RUN chmod +x /entrypoint.sh

# RUN echo "ENTRYPOINT entrypoint.sh"
# ENTRYPOINT ["/entrypoint.sh"]
