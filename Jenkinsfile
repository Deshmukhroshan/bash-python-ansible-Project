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
        echo "📦 Running system info script..."
        sh 'bash task1/systeminfo.sh'
        echo "📄 Contents of system_info.txt:"
        sh 'cat task1/system_info.txt'
      }
    }

    stage('Format JSON') {
      steps {
        echo "🔄 Formatting system info into JSON..."
        sh 'python3 task1/format_json.py'
        echo "📄 Contents of system_info.json:"
        sh 'cat task1/system_info.json'
      }
    }

    stage('Send to VM') {
      steps {
        echo "🚀 Running Ansible Playbook to send system_info.json to VM..."
        sh 'ansible-playbook -i task1/inventory.ini task1/playbook.yml -vvv'
      }
    }
  }
}
