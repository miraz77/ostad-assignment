pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Display File Content') {
            steps {
                script {
                    def content = readFile('hello.txt')
                    echo "Content of hello.txt:\n${content}"
                }
            }
        }
    }
}
