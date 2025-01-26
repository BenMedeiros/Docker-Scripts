provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

# Add a local resource
resource "local_file" "example" {
  content  = "This is an example file."
  filename = "${path.module}/example.txt"
}
