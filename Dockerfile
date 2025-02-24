FROM 'wso2/wso2mi:latest'

# Ensure we are running as root.
USER root

# Create the non-root user.
RUN groupadd -r appuser --gid 10001
RUN useradd -r -u 10001 -g appuser appuser
    
# Copy the carr file
COPY 'vector_store.car' /home/wso2carbon/wso2mi-4.4.0/repository/deployment/server/carbonapps/

# Change ownership of the application directory
RUN chown -R appuser:appuser /home/wso2carbon

# Switch to the non-root user
USER appuser
