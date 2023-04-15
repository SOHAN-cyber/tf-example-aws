terraform {
  backend "s3" {
    bucket         = "devops-tf-remote-state-demo"
    key            = "env/demo/ec2.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-state-locking"
  }
}