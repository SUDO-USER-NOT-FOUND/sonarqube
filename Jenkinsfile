pipeline {
    agent any
    stages {
        stage('SCM') {
            steps {
                // Checkout your source code repository
                checkout scm
            }
        }

        stage('SonarQube Analysis') {
            steps {
                // Define SonarScanner tool
                def scannerHome = tool 'sonar'

                // Run SonarScanner within the SonarQube environment
                withSonarQubeEnv('SonarQube') {
                    // Execute SonarScanner command
                    sh "${scannerHome}/bin/sonar-scanner"
                }
            }
        }
    }
}
