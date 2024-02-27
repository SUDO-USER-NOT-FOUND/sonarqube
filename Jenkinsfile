pipeline {
    agent any
    stages {
        stage('Scan') {
            steps {
                script {
                    sh "chmod +x retrieve.sh"
                    sh "./retrieve.sh" 
                }
            }
        }
    }
}
