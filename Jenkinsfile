pipeline {
    agent any
    stages {
        stage('Scan') {
            steps {
                script {
                    withSonarQubeEnv(installationName: 'sonar') {
                        // Run SonarScanner
                        sh "sonar-scanner "
                    }
                }
            }
        }
    }
}
