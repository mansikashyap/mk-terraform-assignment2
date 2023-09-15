resource "aws_iam_user" "my_users" {
  count = length(var.user_names)
  name  = var.user_names[count.index]


}

resource "aws_instance" "my_example" {
    for_each = toset(var.name)
    ami = "ami-05552d2dcf89c9b24"
    instance_type = var.instance_type
    subnet_id = "subnet-07bc08ba5b03ea105"
    tags = {
        "name" = each.key
        "owner" = var.owner
    }
    volume_tags = {
        "name" = each.value
        "owner" = var.owner
    }

}
