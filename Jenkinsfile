pipeline {
  agent any

  stages {
    stage('Clone Repo') {
      steps {
        git 'git 'https://github.com/roshandeshmuro/system-info-pipeline.git'
      }
    }

    stage('Collect Info') {
      steps {
        sh 'bash systeminfo.sh'
        sh 'python3 format_json.py'
      }
    }

    stage('Send to VM') {
      steps {
        sh 'ansible-playbook -i inventory.ini playbook.yml'
      }
    }
  }
}
