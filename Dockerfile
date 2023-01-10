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
RUN echo "apt-get update -y"
RUN apt-get update -y

# Install Jekyll and Ruby prerequisites
RUN echo "apt-get install -y git ruby-full build-essential zlib1g-dev apt-utils"
RUN apt-get install -y git curl build-essential zlib1g-dev apt-utils

# Install rbenv to install a specific version of Ruby
RUN echo "curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash"
RUN curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash

# Add $HOME/.rbenv/bin to your PATH environment variable to start using Rbenv
RUN echo "'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc"
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
RUN echo "'eval "$(rbenv init -)"' >> ~/.bashrc"
RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc
RUN echo "source ~/.bashrc"
RUN source ~/.bashrc

# Install Ruby
RUN echo "rbenv install 3.0.2"
RUN rbenv install 3.1.2

# Set the newly installed versio of Ruby as the global version
RUN echo "rbenv global 3.1.2"
RUN rbenv global 3.1.2

# Display the current version of Ruby
RUN echo "ruby --version"
RUN ruby --version


# Install prerequisites for this repo
RUN echo "apt-get install -y imagemagick"
RUN apt-get install -y imagemagick

# Install Jekyll and bundler
RUN echo "gem install jekyll bundler"
RUN gem install jekyll bundler

RUN echo "COPY . ${env_workspace_directory}"
COPY . ${env_workspace_directory}

RUN echo "ADD entrypoint.sh /"
ADD entrypoint.sh /
RUN echo "RUN chmod +x /entrypoint.sh"
RUN chmod +x /entrypoint.sh

RUN echo "ENTRYPOINT entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
