pipeline {
agent any
stages {
   stage('Code Quality Check via SonarQube') {
   steps {
       script {
       def scannerHome = tool 'sonarscanner';
           withSonarQubeEnv("sonarqube-container") {
           sh "${tool("sonarqube")}/bin/sonar-scanner \
           -Dsonar.projectKey=jenkins-github \
           -Dsonar.sources=. \
           -Dsonar.css.node=. \
           -Dsonar.host.url=http://192.168.121.241:9000 \
           -Dsonar.login=sqa_14e6325ad28ffdf6325e245dd8f4fcf184427a58"
               }
           }
       }
   }
}
}
