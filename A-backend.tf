terraform {
  backend "s3" {
    bucket = "deathstarbucket66"
    key    = "MyLinuxBox"
    region = "eu-west-1"
  }
}