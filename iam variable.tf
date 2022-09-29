variable "access_key" {
     description = "Access key to AWS console"
}
variable "secret_key" {
     description = "Secret key to AWS console"
}
variable "region" {
     description = "Region of AWS VPC"
}
variable "name" {
  default = "myrole"
  type        = string
  description = "The name of the role. "
}
variable "principal_arns" {
  default = ["123456789012"]
  type        = list(string)
  description = "ARNs of accounts, groups, or users with the ability to assume this role."
}
