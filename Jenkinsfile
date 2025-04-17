pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Ajeet9918/JenkinsRepo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t grocy-website .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                    if [ $(docker ps -q -f name=grocy-container) ]; then
                        docker stop grocy-container && docker rm grocy-container
                    fi
                    docker run -d -p 8080:80 --name grocy-container grocy-website
                '''
            }
        }
    }
}
