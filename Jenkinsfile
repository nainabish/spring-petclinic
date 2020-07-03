#!groovy

pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.5.0'
        }
      }
      steps {
        sh 'mvn clean install'
      }
   stage('Test'){
      	Steps{
	  sh 'mvn test'
	}
	post {
	  always {
		junit 'target/spring-petclinic-reports/*.xml'
		}
	}
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t nainabish/spring-petclinic:latest'
      }
    }
  }
}
}