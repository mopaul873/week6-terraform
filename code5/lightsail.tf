resource "aws_lightsail_instance" "custom" {
  name              = "dev-server"
  availability_zone = "us-east-1a"
  blueprint_id      = "ubuntu_18_04"
  bundle_id         = "medium_1_0"
  user_data         = "#!/bin/bash sudo apt-get update && sudo apt-get install -y apache2 && sudo systemctl start apache2 && sudo systemctl enable apache2 && echo '<h1>This is deployed by Momo. God is gooood all the time</h1>' | sudo tee /var/www/html/index.html"
}

resource "aws_iam_group" "developers" {
  name = "cloudteam"
  
}

resource "aws_iam_user" "lb" {
  name = "u5bt2023"
  

  
}