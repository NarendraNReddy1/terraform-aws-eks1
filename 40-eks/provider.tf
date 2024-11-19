terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.75"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 3.0"
    } 
    time = {
      source  = "hashicorp/time"
      version = ">= 0.9"
    }    
  }
 
  backend "s3" {
  bucket = "daws78s-remote-state-3"
  key    = "EKSCLUST-EKS-NNR1"
  region = "us-east-1"
  dynamodb_table="daws78s-locking1"
  }

}

provider "aws" {
    region="us-east-1"
  # Configuration options
}