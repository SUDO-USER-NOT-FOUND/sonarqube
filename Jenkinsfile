pipeline {
    agent any
    stages {
        stage('Scan') {
            steps {
                script {
                    sh "./retrieve.sh" 
                }
            }
        }
    }
}
