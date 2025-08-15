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
        stage('SonarQube Scan') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh 'sonar-scanner -Dsonar.projectKey=demo -Dsonar.sources=.'
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                // Add your test steps here
            }
        }
        stage('Publish to Artifactory') {
            steps {
                script {
                    def server = Artifactory.server(ARTIFACTORY_SERVER)
                    def uploadSpec = """{
                        "files": [
                            {
                                "pattern": "dummy.txt",
                                "target": "${ARTIFACTORY_REPO}/"
                            }
                        ]
                    }"""
                    writeFile file: 'dummy.txt', text: 'dummy artifact'
                    server.upload(uploadSpec)
                }
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