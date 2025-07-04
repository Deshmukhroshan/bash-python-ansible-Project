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
        sh 'bash task1/systeminfo.sh'
        sh 'python3 task1/format_json.py'
      }
    }

    stage('Send to VM') {
      steps {
        sh 'ansible-playbook -i task1/inventory.ini task1/playbook.yml'
      }
    }
  }
}
