terraform {
    backend "s3" {
        bucket = "test-bucket8564"
        key = "terraform.tfstate"
        region = "ap-south-1"
        
    }
}