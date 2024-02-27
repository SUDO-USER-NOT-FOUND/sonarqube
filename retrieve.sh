#!/bin/bash

# Function to get host URL from Docker container named "sonar"
get_host_url() {
    local host_url=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' sonar)
    echo "http://${host_url}"
}

# Read project key, authentication token, and repo from a text file
read_credentials() {
    local file="$1"
    local project_key=$(awk 'NR==1' "$file")
    local auth_token=$(awk 'NR==2' "$file")
    local repo=$(awk 'NR==3' "$file")
    echo "$project_key $auth_token $repo"
}

# Main script

# Get host URL from Docker container
sonar_host_url=$(get_host_url)

# Check if Docker container exists and host URL is not empty
if [[ -z "$sonar_host_url" ]]; then
    echo "Error: Docker container 'sonar' not found or host URL is empty."
    exit 1
fi

# Read project key, authentication token, and repo from text file
credentials_file="credentials.txt"
if [[ ! -f "$credentials_file" ]]; then
    echo "Error: Credentials file '$credentials_file' not found."
    exit 1
fi

project_key_token_repo=$(read_credentials "$credentials_file")
read -r project_key auth_token repo <<< "$project_key_token_repo"

# Output the retrieved values
echo "Host URL: $sonar_host_url"
echo "Project Key: $project_key"
echo "Authentication Token: $auth_token"
echo "Repo: $repo"

# Docker command
docker_command="docker run \
    --rm \
    -e SONAR_HOST_URL=\"$sonar_host_url\" \
    -e SONAR_SCANNER_OPTS=\"-Dsonar.projectKey=$project_key\" \
    -e SONAR_TOKEN=\"$auth_token\" \
    -v \"$repo:/usr/src\" \
    sonarsource/sonar-scanner-cli"

echo "Running Docker command:"
echo "$docker_command"

# Uncomment below line to execute the Docker command
# eval "$docker_command"
