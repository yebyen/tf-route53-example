variable "public_ip" {
  type = "string"
  description = "The IP to assign to the (whole) zone"
  default = "54.81.43.221"
}
variable "base_domain" {
  type = "string"
  description = "The zone"
  default = "acquatic.science"
}
