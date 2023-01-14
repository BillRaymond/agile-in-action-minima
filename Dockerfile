FROM billraymond/agile-in-action-minima-docker-image:latest

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

RUN echo "#################################################"
RUN echo "Copy local code to the docker container"
RUN echo "COPY . ${env_workspace_directory}"
COPY . ${env_workspace_directory}

RUN echo "#################################################"
RUN echo "Enable the entrypoint.sh file to run and then set it as the entrypoint"
RUN echo "ADD entrypoint.sh /"
ADD entrypoint.sh /
RUN echo "RUN chmod +x /entrypoint.sh"
RUN chmod +x /entrypoint.sh
RUN echo "ENTRYPOINT ["/entrypoint.sh"]"
ENTRYPOINT ["/entrypoint.sh"]
