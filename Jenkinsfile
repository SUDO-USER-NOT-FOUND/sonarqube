pipeline {
    agent any // Define where the pipeline will run. 'any' means it can run on any available agent.

    stages {
        stage("Find out available versions") {
            steps {
                // Inside the steps block, each command should be separated by 'sh' for shell commands.
                sh 'docker version'
                sh 'docker info'
                sh 'docker-compose version'
                sh 'curl --version'
                sh 'jq --version'
            }
        }
    }
}
