# samuelerescablog-infrastructure :rocket:

Infrastructure to support [samuele.dev](https://samuele.dev) and [samueleresca.net](https://samueleresca.net). Compatibile with Terraform 0.12. Based on this [blog post](https://pragmacoders.com/blog/self-hosting-a-ghost-blog-on-aws).

## Run

- Initialization:
```
terraform init
```
- Plan:
```
terraform plan
```
- Execution:
```
terraform apply
```

## Stack
- CloudFront
- EC2 ubuntu instance
- Ghost
- RDS
- Nginx

## Configuration

See [variables.tf.example](variables.tf.example)