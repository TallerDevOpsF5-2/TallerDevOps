pipeline {
  agent any
  stages {
    stage('Contruyendo la App') {
      agent {
         docker {
            image 'python:3.9'
            args '--user 0:0 --net host'
         }
      }
      steps {
        echo 'Paso 1 Contruyendo la App'
        sh 'sh run_build_script.sh'
      }
    }

    stage('Prueba ') {
      steps {
        echo 'Realizando prueba '
        sh 'sh run_tests_script.sh'
      }
    }

    stage('Confirmacion manual') {
      steps {
        echo 'Esperando aprobacion manual'
        input 'Esta ok para despliegue?'
        timestamps() {
          echo 'Momento de confirmacion ok manual'
        }
      }
    }

    stage('Desplegando en Produccion') {
      steps {
        echo 'Desplegando en produccion'
        sh 'sh run_deploy_script.sh'
      }
    }

  }
}
