provider "aws"{
    region = "us-west-1"
}

resource "aws_eip" "EIP" {
    instance = var.webserver_id
}
variable "webserver_id" {
    type = string
}
output "EIP" {
    value = aws_eip.EIP
}