pipeline {
    agent any
    stages {
        stage('Maven Build') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker images'
            }
        }
    }
}