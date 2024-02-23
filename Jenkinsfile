pipeline {
    agent { label 'linux' }
    options {
        buildDiscarder(logRotator(numToKeepStr: '5'))
    }
    stages {
        stage('Scan') {
            steps {
                script {
                    withSonarQubeEnv(installationName: 'sonarqube-scanner') {
                        // Add SonarQube scanner steps here
                    }
                }
            }
        }
    }
}
