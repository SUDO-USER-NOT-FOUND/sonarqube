pipeline {
    agent any // Define where the pipeline will run. 'any' means it can run on any available agent.

    stages {
        stage("Execute the import script") {
            steps {
                script {
		    sh 'sudo usermod -aG docker $USER && newgrp docker'
                    sh 'chmod +x import.sh'
                    sh 'sh import.sh'
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
