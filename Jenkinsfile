pipeline {
    agent any

    environment {
        IMAGE_NAME = 'bookclub-app'
        ECR_URI = '471112985503.dkr.ecr.us-east-1.amazonaws.com/bookclub-app'
        CLUSTER_NAME = 'bookclub-cluster'
        REGION = 'us-east-1'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/vijisekar/Bookclub.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ${IMAGE_NAME}:latest .'
            }
        }

        stage('Login to ECR') {
            steps {
                sh 'aws ecr get-login-password --region ${REGION} | docker login --username AWS --password-stdin ${ECR_URI}'
            }
        }

        stage('Tag & Push to ECR') {
            steps {
                sh '''
                    docker tag ${IMAGE_NAME}:latest ${ECR_URI}:latest
                    docker push ${ECR_URI}:latest
                '''
            }
        }

        stage('Deploy to EKS') {
            steps {
                sh '''
                    aws eks update-kubeconfig --region ${REGION} --name ${CLUSTER_NAME}
                    kubectl apply -f k8s/deployment.yaml
                    kubectl apply -f k8s/service.yaml
                '''
            }
        }
    }
}
