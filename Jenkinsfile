pipeline { 
     agent { label 'linux' } 
     options {
        buildDiscarder(logRotator(numToKeepStr: '5'))
     }
   stages {
      scan('Scan') {
         steps {
            withSonarQubeENv(installationName: 'sonarqube-scanner') {
            }
         }
      }
   }
}
         
      
