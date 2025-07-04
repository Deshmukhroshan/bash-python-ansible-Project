pipeline {
  agent any

  stages {
    stage('Clone Repo') {
      steps {
        git 'https://github.com/Deshmukhroshan/bash-python-ansible-Project.git'
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
