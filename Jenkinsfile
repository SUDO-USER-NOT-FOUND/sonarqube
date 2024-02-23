pipeline {
    agent any
    stages {
        stage('Scan') {
            steps {
                script {
                    withSonarQubeEnv(installationName: 'sonarqube-scanner') {

                    }
                }
            }
        }
    }
}
