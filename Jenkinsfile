pipeline {

    agent any

    tools {
        maven 'Maven'
    }

    stages {

        stage('Checkout') {

            steps {

                git 'https://github.com/sachinsharmaa07/jenkins-mvn.git'

            }

        }

        stage('Compile') {

            steps {

                sh 'mvn compile'

            }

        }

        stage('Test') {

            steps {

                sh 'mvn test'

            }

        }

        stage('Package') {

            steps {

                sh 'mvn package'

            }

        }

        stage('Build Docker Image') {

            steps {

                sh 'docker build -t myapp .'

            }

        }

        stage('Run Container') {

            steps {

                sh 'docker run -d --name app-container myapp || true'

            }

        }

    }

    post {

        success {

            echo 'Pipeline Successful'

        }

        failure {

            echo 'Pipeline Failed'

        }

    }

}