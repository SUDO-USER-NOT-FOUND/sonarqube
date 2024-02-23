pipeline {
    agent any
    stages {
        stage('Scan') {
            steps {
                script {
                    withSonarQubeEnv(installationName: 'sonar') {
                        // Run SonarScanner
                        sh """
                            sonar-scanner \
                            -Dsonar.projectKey=jenkins-github \
                            -Dsonar.projectName=jenkins-github \
                            -Dsonar.projectVersion=1.0 \
                            -Dsonar.sources=. \
                            -Dsonar.exclusions=**/*.min.js,**/*.min.css \
                            -Dsonar.language=js,php,web \
                            -Dsonar.javascript.node.maxspace=4096 \
                            -Dsonar.php.file.suffixes=.php \
                            -Dsonar.sources=.
                        """
                    }
                }
            }
        }
    }
}
