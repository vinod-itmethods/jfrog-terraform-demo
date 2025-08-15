pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo 'Building1...'
                // Add your build steps here, e.g. sh 'terraform init'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing1...'
                // Add your test steps here
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying1...'
                // Add your deploy steps here
            }
        }
    }
    post {
        always {
            echo 'Pipeline finished.'
        }
    }
}