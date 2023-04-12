pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform -chdir=/terraform-EC2 init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform -chdir=/terraform-EC2 plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform -chdir=/terraform-EC2 apply -auto-approve'
            }
        }
    }
}
