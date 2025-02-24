FROM 'wso2/wso2mi:latest'

# Copy the carr file
COPY 'vector_store.car' /home/wso2carbon/wso2mi-4.4.0/repository/deployment/server/carbonapps/
