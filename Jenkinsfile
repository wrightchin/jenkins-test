pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo "build start ..."
        docker build -t jenkins-test .
      }
    }

  }
}