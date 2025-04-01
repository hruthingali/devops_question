pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/hruthingali/devops_question.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t hruthingali/helloworld-java .'
            }
        }
        stage('Push Docker Image') {
            steps {
                sh 'docker login -u hruthingali -p YOUR_PASSWORD'
                sh 'docker push hruthingali/helloworld-java'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
            }
        }
    }
}
