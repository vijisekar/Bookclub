pipeline {
    agent any

    environment {
        IMAGE_NAME = 'bookclub-image'
        CONTAINER_NAME = 'bookclub-app'
        PORT_MAPPING = '8081:80'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/vijisekar/Bookclub.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("${IMAGE_NAME}")
                }
            }
        }

        stage('Stop Previous Container') {
            steps {
                script {
                    sh """
                        docker stop ${CONTAINER_NAME} || true
                        docker rm ${CONTAINER_NAME} || true
                    """
                }
            }
        }

        stage('Run New Container') {
            steps {
                script {
                    dockerImage.run("-d -p ${PORT_MAPPING} --name ${CONTAINER_NAME}")
                }
            }
        }
    }
}
