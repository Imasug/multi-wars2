def IMAGE_TAG = 'multi-wars:latest'

pipeline {
    agent any
    stages {
        stage('Maven Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'echo ${MODE}'
                sh 'echo ${DOCKER_REPO}'
                script {
                    docker.build(IMAGE_TAG, '.')
                }
            }
        }
    }
}