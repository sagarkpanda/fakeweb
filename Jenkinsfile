/* groovylint-disable-next-line CompileStatic */
pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-creds')
    }

    stages {
        /* stage('SCM Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/sagarkrp/fakeweb.git'
            //sh 'whoami'
            }
        } */

        stage('Docker Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin docker.io'
                echo 'Login Completed'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building docker Image'
                sh 'docker build -t sagarkp/fakeweb:$BUILD_NUMBER .'
            }
        }

        stage('Docker Push') {
            steps {
                echo 'Pushing Imgaet to docker hub'
                sh 'docker push sagarkp/fakeweb:$BUILD_NUMBER'
            }
        }
    }
}
