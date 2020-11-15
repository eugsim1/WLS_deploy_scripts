pipeline {
  agent any
  stages {
    stage('1st') {
      steps {
        sh 'whoami '
      }
    }

    stage('2nd') {
      steps {
        sh 'sudo su - oracle && whoami '
      }
    }

  }
}