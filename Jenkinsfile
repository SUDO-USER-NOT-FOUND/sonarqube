pipeline { 
    agent any // Define where the pipeline will run. 'any' means it can run on any available agent.

    stages {
        stage("Execute the import script") {
            steps {
                script {
                    sh 'echo "0211" | sudo -S usermod -aG docker $(whoami) && sudo systemctl restart docker'
                    sh 'docker build -t sacredspirits47/mysqli:v1 . '
		    sh 'docker run -it --name mysql -p 3306:3306 -v $(pwd):/app -e MYSQL_DATABASE=admin -e MYSQL_USER=user -e MYSQL_PASSWORD=user -e MYSQL_ROOT_PASSWORD=111111 sacredspirits47/mysqli:v1 '
                }
            }
        }
        
        stage("Display Docker Version") {
            steps {
                // Verify Docker version
                sh 'docker --version'
            }
        }
    }
}
