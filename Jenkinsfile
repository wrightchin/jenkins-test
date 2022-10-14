pipeline {
  environment {
    registry = "wrightchin/jenkins-test"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent { dockerfile true }
  stages {
    stage('Clone Repo') {
      steps {
        echo "clone start ..."
        script {
          checkout scm
        }
      }
    }

    stage('Build') {
      steps {
        echo "build start ..."
        script {
          app = docker.build("wrightchin/jenkins-test")
        }
      }
    }

    stage('Test') {
      steps {
        echo "testing ..."
      }
    }

  stage('Deploy') {
    steps {
      script {
        app.push("${env.BUILD_NUMBER}")
        app.push("latest")
      }
    }
  } 

  }
}