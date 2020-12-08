provider "aws" {
  version                 = "~> 2.0"
  region                  = "eu-west-3"
  shared_credentials_file = "~/.aws/credentials"
}

module "aws_static_website" {
  source = "module/static-website"

  website-domain-main     = "example.com"
  website-domain-redirect = "www.example.com"
}
