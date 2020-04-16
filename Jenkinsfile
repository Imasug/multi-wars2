pipeline {
    agent any
    stages {
        stage('Maven Deploy') {
            steps {
                sh 'mvn clean deploy'
            }
        }
    }
}