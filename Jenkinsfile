pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                sh 'npm test'
            }
        }

        stage('Deploy') {
            steps {
                script {
                    sh 'docker build -t jenkins-demo-app .'
                    sh 'docker rm -f running-demo-app || true'
                    sh 'docker run -d -p 3000:3000 --name running-demo-app jenkins-demo-app'
                }
            }
        }
    }
}
