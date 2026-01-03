def call(String env) {
    stage('Terraform Init') {
        sh "terraform init"
    }

    stage('Terraform Plan') {
        sh "terraform plan -var-file=envs/${env}/terraform.tfvars"
    }

    if (env == 'uat' || env == 'prod') {
        input "Approve deployment to ${env}?"
    }

    stage('Terraform Apply') {
        sh "terraform apply -auto-approve -var-file=envs/${env}/terraform.tfvars"
    }
}
