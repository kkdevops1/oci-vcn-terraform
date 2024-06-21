terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}

provider "oci" {
  region              = "ap-mumbai-1"
  config_file_profile = "DEFAULT"
}

resource "oci_core_vcn" "jenkins-vcn" {
  dns_label      = "internal"
  cidr_block     = "172.16.0.0/20"
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa5ckpofqhs6lnxw2darjnpbdi4bubz6ufv5g43fbrixidhwryania"
  display_name   = "Jenkins VCN"
}



