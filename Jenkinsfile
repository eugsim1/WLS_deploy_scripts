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
        sh 'pwd && whoami && ch /home/oracle && pwd '
      }
    }

    stage('last') {
      steps {
        echo 'end'
      }
    }

  }
}
