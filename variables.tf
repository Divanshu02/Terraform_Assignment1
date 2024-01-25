variable "str" {
  type    = string
  default = "Hope You all are good"
}

variable "num" {
  type    = number
  default = 7
}

variable "listVar" {
  type    = list(string)
  default = ["Terraform", "AWS", "Azure"]
}

variable "mapVar" {
  type = map(string)
  default = {
    position : "Software Trainee"
    id : "21"
  }
}


variable "objectVar" {
  type = object({
    name  = string
    age   = number
    state = string
  })
  default = {
    name  = "Divanshu Sharma"
    age   = 21
    state = "punjab"
  }
}
variable "ami_id" {
    type = string
}
