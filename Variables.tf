variable "bucket" {
  default     = "luitbucket777"
  type        = string
  description = "Sets the name for the S3 Bucket"
}

variable "name" {
  default     = "another-test-user"
  type        = string
  description = "Creates the test user account name"
}

variable "aws_iam_user" {
  default     = "another-test-user"
  type        = string
  description = "Specifies the user to be added to the group"
}

variable "aws_iam_group" {
  default     = "s3FullAccess"
  type        = string
  description = "Sets the group the user will be added to"
}

#Extras
variable "images" {
  type = map(any)
  default = {
    archive1 = "/Users/dmgla/Desktop/Projects/kube.png"
    #archive2 = "/Users/dmgla/Desktop/Projects/lab.png"
    archive3 = "/Users/dmgla/Desktop/Projects/reading_rainbow.jpg"
  }
}