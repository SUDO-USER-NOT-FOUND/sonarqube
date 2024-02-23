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
                withSonarQubeEnv('sqa_14e6325ad28ffdf6325e245dd8f4fcf184427a58') {
                    sh """
                    sonar-scanner \
                    -Dsonar.projectKey=jenkins-github \
                    -Dsonar.sources=${env.GIT_URL} \
                    -Dsonar.host.url=http://192.168.121.241:9000 \
                    -Dsonar.login=\${env.SONARQUBE_SERVER}
                    """
                    sh """
                    echo =${env.GIT_URL}
                    """
                }
            }
        }
    }
}
