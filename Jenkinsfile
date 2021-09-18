pipeline {
  agent any
  stages {
    stage('Contruyendo la App') {
      steps {
        echo 'Paso 1 Contruyendo la App'
        sh 'run_build_script.sh'
      }
    }

    stage('Prueba ') {
      steps {
        echo 'Realizando prueba '
        sh 'run_tests_script.sh'
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
        sh 'run_deploy_script.sh'
      }
    }

  }
}
