output "mk1_arn" {
  value       = aws_iam_user.my_users[0]
  description = "The ARN for user mk1"
}

output "my_arns" {
  value       = aws_iam_user.my_users[*].arn
  description = "The ARNs users"
}
