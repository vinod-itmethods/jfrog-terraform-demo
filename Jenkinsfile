pipeline {
    agent any

    environment {
        SONARQUBE_SERVER = 'SonarQube' // Jenkins SonarQube server name (configure in Jenkins)
        ARTIFACTORY_SERVER = 'Artifactory' // Jenkins Artifactory server name (configure in Jenkins)
        ARTIFACTORY_REPO = 'example-generic-local' // Your JFrog repo name
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build1') {
            steps {
                echo 'Building...'
                // Add your build steps here, e.g. sh 'terraform init'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...'
                // Add your test steps here
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying...'
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