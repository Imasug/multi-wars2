pipeline {
    agent any
    stages {
        stage('Maven Build') {
            steps {
                sh 'mvn packege'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker images'
            }
        }
    }
}