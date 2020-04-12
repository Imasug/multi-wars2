def IMAGE_TAG = 'multi-wars:latest'
def DOCKER_REPO_CRED = 'ocp4-docker-repos'

pipeline {
    agent any
    environment {
        MAVEN_OPTS="-Duser.home=."
    }
    stages {
        stage('Maven Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    docker.build(IMAGE_TAG, '.')
                }
            }
        }
        stage ('Docker Push') {
            steps {
                script {
                    docker.withRegistry("${DOCKER_REPO}", DOCKER_REPO_CRED) {
                        docker.image(IMAGE_TAG).push()
                    }
                }
            }
        }
    }
}