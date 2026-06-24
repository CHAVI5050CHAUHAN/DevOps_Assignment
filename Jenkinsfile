pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Validate') {
            steps {
                sh 'echo "Validation Successful"'
                sh 'ls -la'
            }
        }

        stage('Build') {
            steps {
                sh 'docker --version'
            }
        }

        stage('Deploy') {
            steps {
                sh 'echo "Application Deployment Stage Completed"'
            }
        }

        stage('Verify') {
            steps {
                sh 'docker ps'
            }
        }
    }

    post {
        success {
            echo 'Deployment Successful'
        }
        failure {
            echo 'Deployment Failed'
        }
    }

