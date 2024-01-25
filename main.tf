locals {
  num_local    = var.num
  str_local    = var.str
  list_local   = var.listVar
  map_local    = var.mapVar
  object_local = var.objectVar
}


resource "local_file" "res1" {
  filename = "${path.module}/tera1/string"
  content  = local.str_local
}

resource "local_file" "res2" {
  filename = "${path.module}/tera1/number"
  content  = local.num_local
}

resource "local_file" "res3" {
  filename = "${path.module}/tera2/list"
  content  = var.listVar[0]
}

resource "local_file" "res4" {
  filename = "${path.module}/tera2/map"
  content  = var.mapVar.position
}

resource "local_file" "res5" {
  filename = "${path.module}/tera3/object"
  content  = local.object_local.state
}


resource "random_id" "server" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    ami_id = var.ami_id
  }
  byte_length = 8
}




