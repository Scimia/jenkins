pipeline {
    agent any
    options {
        retry(1)
        timeout(time: 150, unit: 'MINUTES')
    }
    environment {
        SOBRIQUET = "aa234ncmgjcmx216"
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
        stage('Build') {
            steps {
                sh script: "make",
                   label: "run make (all)"
            }
        }
    }
}
