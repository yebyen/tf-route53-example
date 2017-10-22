resource "aws_route53_zone" "primary" {
  name = "${var.base_domain}"
}
resource "aws_route53_record" "root" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "${aws_route53_zone.primary.name}"
  type    = "A"
  ttl     = "300"
  records = ["${var.public_ip}"]
}
resource "aws_route53_record" "star" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "*.${aws_route53_zone.primary.name}"
  type    = "CNAME"
  ttl     = "300"
  records = ["${aws_route53_zone.primary.name}"]
}
