pipeline {
//   environment {
//     registry = "wrightchin/jenkins-test"
//     registryCredential = 'dockerhub'
//     dockerImage = ''
//   }
  agent {
    docker {
      image 'node:16'
      args '-p 3000:3000'
    }
  }

  // stages {
  //   stage('Clone Repo') {
  //     steps {
  //       echo "clone start ..."
  //       script {
  //         checkout scm
  //       }
  //     }
  //   }

    stage('Build') {
      steps {
        echo "build start ..."
        script {
          sh 'npm install'
          sh 'npm start'
        }
      }
    }

    stage('Test') {
      steps {
        echo "testing ..."
      }
    }

  // stage('Deploy') {
  //   steps {
  //     script {
  //       app.push("${env.BUILD_NUMBER}")
  //       app.push("latest")
  //     }
  //   }
  // } 

}
