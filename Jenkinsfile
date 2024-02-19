pipeline {
    agent any // Define where the pipeline will run. 'any' means it can run on any available agent.

    stages {
        stage("Display Docker Version") {
            steps {
                // Verify Docker version
                sh 'docker --version'
            }
        }
    }
}
