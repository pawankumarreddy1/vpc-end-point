variable "pub_cidr" {
  default = ["10.0.216.0/21", "10.0.224.0/21", "10.0.232.0/21"]
  type    = list(any)

}

variable "private_cidr" {
  default = ["10.0.0.0/18", "10.0.64.0/18", "10.0.128.0/18"]
  type    = list(any)

}

variable "data_cidr" {
  default = ["10.0.192.0/21", "10.0.200.0/21", "10.0.208.0/21"]
  type    = list(any)

}