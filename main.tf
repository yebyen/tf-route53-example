resource "aws_route53_zone" "primary" {
  name = "acquatic.science"
}
resource "aws_route53_record" "root" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "acquatic.science"
  type    = "A"
  ttl     = "300"
  records = ["${var.public_ip}"]
}
resource "aws_route53_record" "star" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "*.acquatic.science"
  type    = "CNAME"
  ttl     = "300"
  records = ["acquatic.science"]
}
variable "public_ip" {
  type = "string"
  description = "The IP to assign to the (whole) zone"
  default = "54.81.43.221"
}
