variable "user_names" {
  description = "Create IAM users with these names"
  type        = list(string)
  default     = ["mk1", "mk2", "mk3"]
}

variable "ami" {
  type        = list(string)
  description = "Ami id of instance"
  default = ["value"]

}

variable "instance_type" {
  type        = string
  description = "instance type"
  default = "t2.micro" 
}
variable "name" {
  type        = set(string)
  description = "name of instance"
  default = ["user1", "user2", "user3"]

}

variable "owner" {
  type        = string
  description = "owner of instance"
  default = "mansi.kashyap@cloudeq.com"
}