pipeline {
    agent any
    environment {
        TERRAFORM_WORKING_DIR = "/terraform-EC2"
    }
    stages {
        stage('terraform-init') {
            steps {
                sh "terraform init ${TERRAFORM_WORKING_DIR}"
            }
        }
        stage('terraform-validate') {
            steps {
                sh "terraform validate ${TERRAFORM_WORKING_DIR}"
            }
        }
        stage('terraform-plan') {
            steps {
                sh "terraform plan ${TERRAFORM_WORKING_DIR}"
            }
        }
        stage('terraform-apply') {
            steps {
                sh "terraform apply -auto-approve ${TERRAFORM_WORKING_DIR}"
            }
        }
    }
}
