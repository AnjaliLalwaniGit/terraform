provider "aws" {
   region = "us-east-1"
   access_key = "<YOUR_ACCESS_KEY>"
   secret_key = "<YOUR_SECRET_KEY>"
   token = "<YOUR_TOKEN >"
}

resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}
//vairable user_names of type list
variable "user_names" {
  description = "IAM usernames"
  type        = list(string)
  default     = ["user1", "user2", "user3s"]
}
