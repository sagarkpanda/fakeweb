pipeline {
  agent any
 }
  stages {
        
    stage('SCM Checkout') {
      steps {
       git branch: 'main', url: 'https://github.com/sagarkrp/fakeweb.git'
      }
    }
    stage('Build') {
      steps {
        sh 'docker build fakeweb .'
        //sh 'npm run build'
        }
    } 
}
}
