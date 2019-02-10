module "assets" {
  source = "git::https://github.com/poseidon/terraform-render-bootkube.git?ref=c12a11c8006606b59335ecc994abe22358aaf68b"

  cluster_name          = "${var.cluster_name}"
  api_servers           = ["${var.cluster_name}"]
  cluster_domain_suffix = "${var.cluster_name}"
  etcd_servers          = ["${var.etcd_domain}"]
  asset_dir             = "${var.asset_dir}"
}

module "etcd" {
  source       = "modules/etcd"
  data_dir     = "${var.etcd_data_dir}"
  domain       = "${var.etcd_domain}"
  host_bind_ip = "${var.host_ip}"

  pki = {
    ca_cert     = "${module.assets.etcd_ca_cert}"
    server_cert = "${module.assets.etcd_server_cert}"
    server_key  = "${module.assets.etcd_server_key}"
    peer_cert   = "${module.assets.etcd_peer_cert}"
    peer_key    = "${module.assets.etcd_peer_key}"
  }

  depends_on = "${module.assets.id}"
}

module "bootkube" {
  source    = "modules/bootkube"
  host_ip   = "${var.host_ip}"
  k8s_host  = "${var.cluster_name}"
  asset-dir = "${var.asset_dir}"

  assets = {
    kubeconfig         = "${module.assets.kubeconfig-kubelet}"
    ca_cert            = "${base64decode(module.assets.ca_cert)}"
    kubelet_cert       = "${base64decode(module.assets.kubelet_cert)}"
    kubelet_key        = "${base64decode(module.assets.kubelet_key)}"
    kubeconfig-kubelet = "${module.assets.kubeconfig-kubelet}"
  }
}

module "kubelet" {
  source = "modules/kubelet"

  host_ip  = "${var.host_ip}"
  k8s_host = "${var.cluster_name}"

  assets = {
    kubeconfig = "${module.assets.kubeconfig-kubelet}"
    ca_cert    = "${base64decode(module.assets.ca_cert)}"
  }
}
