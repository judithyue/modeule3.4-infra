provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_ecr_repository" "flask_app" {
  name                 = "bq-flask-app-ecr-repo"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}