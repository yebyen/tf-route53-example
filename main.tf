resource "aws_route53_zone" "primary" {
  name = "acquatic.science"
}
resource "aws_route53_record" "root" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "acquatic.science"
  type    = "A"
  ttl     = "300"
  records = ["${aws_eip.lb.public_ip}"]
}
resource "aws_route53_record" "star" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "acquatic.science"
  type    = "A"
  ttl     = "300"
  records = ["${aws_eip.lb.public_ip}"]
}
