pipeline {
    agent any

    environment {
        // Define SonarQube server credentials
        SONARQUBE_SERVER = credentials('sonar')
    }

    stages {
        stage('SonarQube analysis') {
            steps {
                // Run SonarScanner within the SonarQube environment
                withSonarQubeEnv('SonarQube') {
                    sh """
                    sonar-scanner \
                    -Dsonar.projectKey=jenkins-github \
                    -Dsonar.sources=${env.GIT_URL} \
                    -Dsonar.host.url=http://192.168.121.241:9000 \
                    -Dsonar.login=\${env.SONARQUBE_SERVER}
                    """
                }
            }
        }
    }
}
