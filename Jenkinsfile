pipeline {
    agent any
    stages {
        stage('Scan') {
            steps {
                script {
                    // Ensure SonarQube scanner is available
                    sh "echo 'export PATH=\"/opt/sonar-scanner/bin:$PATH\"' >> ~/.bashrc"
                    // Execute SonarScanner
                    sh "sonar-scanner"
                }
            }
        }
    }
}
