pipeline {
    agent any
    stages {
        stage('Scan') {
            steps {
                script {
                    withSonarQubeEnv(installationName: 'sonarqube-scanner') {
                        // Add SonarQube scanner steps here
                        sh 'sonar-scanner' // Example command to run the SonarQube scanner
                    }
                }
            }
        }
    }
}
