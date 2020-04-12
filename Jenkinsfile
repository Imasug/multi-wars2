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
                sh 'echo ${MODE}'
                sh 'echo ${DOCKER_REPO}'
                sh 'docker images'
            }
        }
    }
}