pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Getting code from GitHub'
            }
        }

        stage('Terraform') {
            steps {
                sh '''
                cd terraform
                terraform init
                terraform validate
                '''
            }
        }

        stage('Ansible') {
            steps {
                sh '''
                cd ansible
                ansible -i inventory.ini web -m ping
                '''
            }
        }
    }
}
