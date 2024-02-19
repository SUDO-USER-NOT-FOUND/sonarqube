pipeline {
    agent any // Define where the pipeline will run. 'any' means it can run on any available agent.

    stages {
        stage("Install Docker") {
            steps {
                script {
                    // Add Docker's official GPG key
                    sh 'sudo apt-get update'
                    sh 'sudo apt-get install -y ca-certificates curl'
                    sh 'sudo install -m 0755 -d /etc/apt/keyrings'
                    sh 'sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc'
                    sh 'sudo chmod a+r /etc/apt/keyrings/docker.asc'

                    // Add the repository to Apt sources
                    sh 'echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null'
                    sh 'sudo apt-get update'

                    // Install Docker
                    sh 'sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin'
                }
            }
        }
        
        stage("Display Docker Version") {
            steps {
                // Verify Docker version
                sh 'docker --version'
            }
        }
    }
}
