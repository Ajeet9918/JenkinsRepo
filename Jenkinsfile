pipeline {
    agent any

    stages {
        stage('Docker Cleanup') {
            steps {
                bat '''
                docker stop grocery || echo Container not running
                docker rm grocery || echo No container to remove
                docker rmi -f grocery || echo No image to remove
                '''
            }
        }

        stage('Build Image') {
            steps {
                bat 'docker build -t grocery .'
            }
        }

        stage('Run Container') {
            steps {
                bat 'docker run -d -p 5000:80 --name grocery grocery'
            }
        }
    }
}
