# kayak

![](https://img.shields.io/badge/Status-Alpha-red.svg)

Kayak is a Kubernetes distribution that relies on the Docker Engine API to bootstrap a Kubernetes Control Plane using bootkube.

It can be used alongside the [terraform-ignition-docker-api](https://registry.terraform.io/modules/captn3m0/docker-api/ignition/1.0.0) module to bootstrap a single node cluster on Core OS.

It uses typhoon's [terraform-render-bootkube](https://github.com/poseidon/terraform-render-bootkube) to generate
the assets.

## Required Inputs

## Configuration

The following input variables are required:

### asset\_dir

Description: local directory to store assets

Type: `string`

### cluster\_name

Description: cluster hostname

Type: `string`

### etcd\_data\_dir

Description: etcd data directory on host

Type: `string`

### etcd\_domain

Description: etcd hostname

Type: `string`

### host\_ip

Description:

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

