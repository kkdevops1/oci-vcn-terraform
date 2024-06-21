pipeline {

agent any

environment {
    
    TF_VAR_tenancy_ocid = credentials('oci_tenancy_ocid')
	TF_VAR_user_ocid = credentials('oci_user_ocid')
	TF_VAR_fingerprint = credentials('oci_fingerprint')
	TF_VAR_private_key_path = credentials('oci_private_key_path')
	TF_VAR_region = 'ap-mumbai-1'
}

stages {
     
	 stage ("Check out git repository") {
	     
		 steps {
		  git clone 'https://github.com/kkdevops1/oci-vcn-terraform.git'		 
		 }
	    }
		
		stage ("Terraform init") {
		
		steps {
		
		 sh 'terraform init'
		}
		}
		
		stage ("Terraform plan") {
		
		steps {
		
		 sh 'terraform plan -out=tfplan'
		}
		}
		
		
		
		stage ("Terraform apply") {
		
		steps {
		
		 sh 'terraform apply --auto-approve tfplan'
		}
		}
	

	 }
	  
}

}


}
