pipeline {
    agent any
    options {
        retry(1)
        timeout(time: 150, unit: 'MINUTES')
    }
    environment {
        COLOR = "red"
    }
    stages {
        stage('Setup') {
            environment {
                DEBIAN_FRONTEND = "noninteractive"
            }
            steps {
                sh script: "apt-get update -y -qq && apt-get install -y -qq make", label: "Install make"
            }
        }
        stage('Build One') {
            environment {
                NUMBER = "one"
            }
            steps {
                sh script: "make build",
                   label: "run make 'build' target"
            }
        }
        stage('Build Two') {
            environment {
                NUMBER = "two"
            }
            steps {
                sh script: "make build",
                   label: "run make 'build' target"
            }
        }
    }
}
