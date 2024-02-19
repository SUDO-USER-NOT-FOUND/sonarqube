pipeline {
    agent any {
        stages {
            stage("Find out available versions") {
                steps {
                    sh '''
                        docker version
                        docker info 
                        docker-compose version
                        curl --version 
                        jq --version
                        '''
                }
            }
        }
    }
}
