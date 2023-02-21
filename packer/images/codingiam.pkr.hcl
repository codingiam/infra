packer {
  required_version = ">= 1.7.0"
  required_plugins {
    vagrant = {
      version = ">= 1.0.2"
      source  = "github.com/hashicorp/vagrant"
    }
  }
}

variable "box_username" {
  type =  string
}

variable "box_password" {
  type =  string
}

source "vagrant" "vm" {
  communicator          = "ssh"
  source_path           = "archlinux/archlinux"
  provider              = "virtualbox"
  template              = "data/Vagrantfile.spec"
  skip_add              = false
  add_force             = true
  box_name              = "codingiam"
  insert_key            = true
  teardown_method       = "halt"
  skip_package          = true
  output_dir            = "boxes"
  synced_folder         = ""
  ssh_port              = 2222
  ssh_username          = "${var.box_username}"
  ssh_password          = "${var.box_password}"
  ssh_wait_timeout      = "90s"
}

build {
  sources = ["source.vagrant.vm"]
}
