variable "region" {
    default = "us-east-1"
}
variable "preferred_number_of_public_subnets" {
    default = 2
}
variable "tags" {
  description = "A mapping of tags to assign to all resources."
  type        = map(string)
  default     = {}
}
variable "vpc_cidr" {
    default = "172.16.0.0/16"
}