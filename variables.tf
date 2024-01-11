# TODO Change region and zone to your region and zone, or to your desired region and zone.

variable "project" {}

variable "credentials_file" {}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}
