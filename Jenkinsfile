pipeline {

    agent any

    tools {
        maven 'Maven'
    }

    stages {

        stage('Checkout') {

            steps {

                git branch: 'main',
                    url: 'https://github.com/sachinsharmaa07/jenkins-mvn.git'

            }

        }

        stage('Check Docker') {

            steps {

                sh '''
                echo "PATH:"
                echo $PATH

                which docker || true

                docker --version || true
                '''
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