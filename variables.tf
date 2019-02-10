variable "cluster_name" {
  description = "cluster hostname"
}

variable "etcd_domain" {
  description = "etcd hostname"
}

variable "etcd_data_dir" {
  description = "etcd data directory on host"
}

variable "asset_dir" {
  description = "local directory to store assets"
}

variable "host_ip" {}
