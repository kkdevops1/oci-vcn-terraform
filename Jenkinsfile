Ipipeline {
    agent any

    environment {
        TF_VAR_tenancy_ocid = credentials('oci_tenancy_ocid')
        TF_VAR_user_ocid = credentials('oci_user_ocid')
        TF_VAR_fingerprint = credentials('oci_fingerprint')
        TF_VAR_private_key_path = credentials('oci_private_key_path')
        TF_VAR_region = 'ap-mumbai-1'
    }

    stages {
        stage("Checkout Git Repository") {
            steps {
                script {
                    git branch: 'main', credentialsId: 'your-git-credentials-id', url: 'https://github.com/kkdevops1/oci-vcn-terraform.git'
                }
            }
        }

        stage("Terraform Init") {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }

        stage("Terraform Plan") {
            steps {
                script {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        stage("Terraform Apply") {
            steps {
                script {
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }
    }
}

