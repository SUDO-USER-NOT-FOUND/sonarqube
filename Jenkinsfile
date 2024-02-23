pipeline {
    agent any
    stages {
        stage('Scan') {
            steps {
                script {
                    // Ensure SonarQube scanner is available
                    sh "ln -s /opt/sonar-scanner/bin/sonar-scanner /usr/local/bin/sonar-scanner"
                    sh "echo 'export PATH=\"/opt/sonar-scanner/bin:$PATH\"' >> ~/.bashrc"
                    sh "source ~/.bashrc"
                    
                    // Execute SonarScanner
                    sh "sonar-scanner"
                }
            }
        }
    }
}
