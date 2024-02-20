pipeline { 
    agent any // Define where the pipeline will run. 'any' means it can run on any available agent.

    stages {
        stage("Execute the import script") {
            steps {
                script {
                    sh 'docker build -t sacredspirits47/mysqli:v1 . '
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
