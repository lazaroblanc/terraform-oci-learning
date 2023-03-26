terraform {
  required_providers {
    oci = {
      source = "hashicorp/oci"
    }
  }
}

provider "oci" {
  region              = "eu-frankfurt-1"
  auth                = "SecurityToken"
  config_file_profile = "DEFAULT"
}

resource "oci_core_vcn" "internal" {
  dns_label      = "internal"
  cidr_block     = "10.0.11.0/24"
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaawsowxw2lhdss2yrtmrhty6qoz56iuy2q6rlawcrxqygrvf7bv5sq"
  display_name   = "My internal VCN"
}
