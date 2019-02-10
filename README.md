# kayak ![](https://img.shields.io/badge/license-MIT-blue.svg) ![](https://img.shields.io/badge/Status-Alpha-red.svg)

Kayak is a Kubernetes distribution that relies on the Docker Engine API to bootstrap a Kubernetes Control Plane using bootkube.

It can be used alongside the [terraform-ignition-docker-api](https://registry.terraform.io/modules/captn3m0/docker-api/ignition/1.0.0) module to bootstrap a single node cluster on Core OS.

It uses typhoon's [terraform-render-bootkube](https://github.com/poseidon/terraform-render-bootkube) to generate
the assets. It is licensed under [MIT](https://nemo.mit-license.org/)

For variable and output documentation, see the [Terraform Registry](https://registry.terraform.io/modules/captn3m0/kayak/docker) or the [MODULE.md](MODULE.md) file.