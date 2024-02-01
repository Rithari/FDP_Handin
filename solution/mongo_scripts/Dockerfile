# Use the official MongoDB image
FROM mongo:latest

# Install curl
RUN apt-get update && apt-get install -y curl

# Change to a directory with write permission, e.g., /tmp
WORKDIR /tmp

# Download the file.
RUN curl -o /tmp/fdpdata.tar.gz https://pixeldrain.com/api/file/KefZ2Lh5?download

# Unzip the file
RUN tar -xzf fdpdata.tar.gz

# Copy the init script to the container
COPY create_user.js /docker-entrypoint-initdb.d/
COPY init-mongo.sh /docker-entrypoint-initdb.d/

# Set the MongoDB server as the default command
CMD ["mongod"]