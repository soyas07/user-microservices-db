FROM mysql:8.3.0

# Copy the health check script into the container
COPY health_check.sh /usr/local/bin/

# Set execute permissions for the script
RUN chmod +x /usr/local/bin/health_check.sh

# Define the health check command
HEALTHCHECK --interval=30s --timeout=10s CMD /usr/local/bin/health_check.sh

# Define a volume for MySQL data
VOLUME /var/lib/mysql

# Define a volume for MySQL configuration
VOLUME /etc/mysql/conf.d
