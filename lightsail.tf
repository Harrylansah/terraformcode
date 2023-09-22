resource "aws_lightsail_instance" "example_instance" {
name              = "dev_instance"
  
instance_plan_key = "nano_2_0"
  
user_data = <<-EOF
           sudo yum install httpd -y
           sudo systemctl start httpd
           sudo systemctl enable httpd  
           echo "<hi>This Server is created using Terraform  </hi>" | sudo tee /var/www/h
           EOF
}