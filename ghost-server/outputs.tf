output "cloudfront-dns" { value = aws_cloudfront_distribution.samuelerescablog-server.domain_name }
output "server-ip" { value = aws_instance.ghost.public_ip }