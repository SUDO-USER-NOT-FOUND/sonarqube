pipeline {
    agent any
    stages {
        stage('Get Repo Name') {
            steps {
                script {
                    // Assuming env.GIT_URL is something like https://github.com/user/repo.git
                    def repoName = env.GIT_URL.tokenize('/').last().takeWhile { it != '.git' }
		    echo env.GIT_URL
                    echo "Repository name is ${repoName}"
                }
            }
        }
    }
}
