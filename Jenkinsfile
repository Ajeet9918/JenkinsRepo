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
                script {
                    dockerImage = docker.build("grocy-website")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh '''
                        if [ $(docker ps -q -f name=grocy-container) ]; then
                            docker stop grocy-container && docker rm grocy-container
                        fi
                    '''
                    dockerImage.run("-d -p 8080:80 --name grocy-container")
                }
            }
        }
    }
}
