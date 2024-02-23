pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code repository
                checkout scm
            }
        }
        
        stage('SonarQube analysis') {
            environment {
                // Define SonarQube server credentials
                SONARQUBE_SERVER = credentials('soonar')
            }
            steps {
                // Run SonarScanner within the SonarQube environment
                withSonarQubeEnv('SonarQube') {
                    sh """
                    sonar-scanner \
                    -Dsonar.projectKey=jenkins-github \
                    -Dsonar.sources= . \
                    -Dsonar.host.url=http://192.168.121.241:9000 \
                    -Dsonar.login=\${env.SONARQUBE_SERVER}
                    """
                }
            }
        }
    }
}
