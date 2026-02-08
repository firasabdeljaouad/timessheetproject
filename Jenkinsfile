pipeline {
    agent any

    tools {
        jdk 'JDK17'
        maven 'maven3'
    }

    stages {
        stage('GIT') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/firasabdeljaouad/timessheetproject.git'
            }
        }

        stage('Compile Stage') {
            steps {
                sh 'mvn clean compile'
            }
        }
    }
}
