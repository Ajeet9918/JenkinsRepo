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
                bat 'docker build -t grocy-website .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat '''
                    FOR /F "tokens=*" %%i IN ('docker ps -q -f name=grocy-container') DO docker stop %%i & docker rm %%i
                    docker run -d -p 3000:80 --name grocy-container grocy-website
                '''
            }
        }
    }
}
