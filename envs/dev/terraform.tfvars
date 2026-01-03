ami_id        = "ami-0ecb62995f68bb549"
instance_type = "t3.micro"
subnet_id     = "subnet-0fafcb400c99a1c3a"
security_group_ids = ["sg-0945056a01772882b"]
volume_size   = 10

alb_subnets = ["subnet-0ba446c3a319c02d3", "subnet-016adb85e54d7b5af"]
alb_sg      = ["sg-0945056a01772882b"]
vpc_id      = "vpc-01896ed0e92bc5601"

environment = "uat"
owner       = "manoj"