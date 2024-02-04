
resource "aws_lightsail_instance" "custom" {
  name              = "week_5"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform. I am excited. God is gooood all the time</h1>' | sudo tee /var/www/html/index.html"
}
resource "aws_iam_group" "developers" {
  name = "Alexiateam"
  path = "/users/"
}
resource "aws_iam_user" "lb" {
  name = "u5bt2023"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}



  