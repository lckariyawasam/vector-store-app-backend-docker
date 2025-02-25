FROM 'wso2/wso2mi:latest'

# set Docker image build arguments
# build arguments for user/group configurations
ARG USER=wso2carbon
ARG USER_ID=10802
ARG USER_GROUP=wso2
ARG USER_GROUP_ID=10802
ARG USER_HOME=/home/${USER}

# set the user and work directory
USER ${USER_ID}
WORKDIR ${USER_HOME}

# copy the carr file
COPY 'vector_store.car' ${USER_HOME}/wso2mi-4.4.0/repository/deployment/server/carbonapps/

# set the user and work directory
USER ${USER_ID}
WORKDIR ${USER_HOME}
