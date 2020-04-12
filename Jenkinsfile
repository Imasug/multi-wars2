def IMAGE_TAG = 'multi-wars:latest'
def DOCKER_REPO_CRED = 'ocp4-docker-repos'

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
                docker.build(IMAGE_TAG, '.')
                // script {
                //     docker.withRegistry("${DOCKER_REPO}", DOCKER_REPO_CRED) {
                //         docker.build(IMAGE_TAG, '.').push()
                //     }
                // }
            }
        }
        stage ('Docker Push') {
            steps {
                docker.withRegistry("${DOCKER_REPO}", DOCKER_REPO_CRED) {
                    docker.image(IMAGE_TAG).push()
                }
            }
        }
    }
}