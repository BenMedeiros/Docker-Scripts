# Docker Scripts

This repository contains miscellaneous scripts for managing Docker containers.

## Scripts

### docker_info_scripts.bat

This batch file includes several Docker commands for managing containers:

- List all running containers
- Start the MySQL container
- Stop the MySQL container
- Monitor activity across all instances
- Build a container using a Dockerfile
- Inspect the IP address of a running container
- Create and manage Docker volumes
- Execute commands inside a running MySQL container

### cmds.bat

This batch file includes commands for managing Terraform containers:

- Run the Terraform plan command
- Run the Terraform apply command
- Open a shell inside the Terraform container
- Remove the Terraform container after running commands

### docker-compose-mysql.yml

This Docker Compose file sets up a MySQL service with the following configuration:

- MySQL version 5.7
- Environment variables for root password, database name, user, and user password
- Persistent storage using Docker volumes

### docker-compose.yml (PostgreSQL)

This Docker Compose file sets up a PostgreSQL service with the following configuration:

- PostgreSQL version 13
- Environment variables for user, password, and database name
- Persistent storage using Docker volumes
- Initialization script to create tables and insert data

### Dockerfile (PostgreSQL)

This Dockerfile sets up a PostgreSQL image with the following configuration:

- Based on PostgreSQL version 13
- Installs inotify-tools
- Copies initialization SQL script and watch script
- Custom entrypoint to watch for changes in the initialization script and restart PostgreSQL

### init.sql (PostgreSQL)

This SQL script initializes the PostgreSQL database with the following:

- Creates a `users` table
- Inserts multiple user records

### Dockerfile.test (MySQL)

This Dockerfile sets up a MySQL test environment with the following configuration:

- Based on a base image
- Sets environment variables for database URL and API key
- Copies application files
- Sets the working directory
- Specifies the command to run the application

### linux.sh (Terraform)

This script sets up a Terraform environment on an Ubuntu container with the following steps:

- Runs an Ubuntu container
- Starts the container and opens a shell
- Updates the package list and installs ping utility
- Commits the container state to a new image

### main.tf (Terraform)

This Terraform configuration file includes the following resources:

- AWS provider configuration
- An example AWS EC2 instance
- A local file resource

## Usage

To use the scripts, run the batch file from the command line:

```sh
docker_info_scripts.bat