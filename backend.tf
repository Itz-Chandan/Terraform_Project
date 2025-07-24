terraform {
    backend "s3" {
        bucket = "name-of-bucket"
        key = <path-to-the-state.file>
        region = "ap-south-1"

        dynamodb_table = "terraform-locks"
        encrypt = true 
    }
}

- main.tf, - variables.tf, -.tfvars, outputs.tf, backend.tf