pipeline {
    agent any
    tools {
        terraform 'my_terraform'
    }
    stages{
        stage('Git Checkout'){
            steps{
                git branch: 'main', credentialsId: 'Git_ID', url: 'https://github.com/kumariseait/dock_terra.git'
            }
        }
        stage('Terraform Initilization'){
            steps{
                sh 'terraform init'
            }
        }
        stage('Terraform planning'){
            steps{
                sh 'terraform plan'
            }
        }
        stage('Terraform apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
