terraform {
    backend "s3" {
        bucket = "vinaybuckets3"
        key    = "ansible.tfstate"
        region = "us-east-1"
    }
}