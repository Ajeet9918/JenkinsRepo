pipeline {
     agent any
 
     stages {
         stage('Clone repository') {
             steps {
                 git 'https://your-repo-url.git'
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
                     dockerImage.run("-d -p 8080:80")
                 }
             }
         }
     }
 }