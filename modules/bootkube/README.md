## Required Inputs

The following input variables are required:

### asset-dir

Description:

Type: `string`

### assets

Description:

Type: `map`

### host\_ip

Description:

Type: `string`

### k8s\_host

Description: kubenetes hostname

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### host\_port

Description:

Type: `string`

Default: `"8443"`

### network\_provider

Description:

Type: `string`

Default: `"flannel"`

### pod\_cidr

Description:

Type: `string`

Default: `"10.25.0.0/16"`

### service\_cidr

Description:

Type: `string`

Default: `"10.96.0.0/16"`

### version

Description:

Type: `string`

Default: `"0.14.0"`

## Outputs

The following outputs are exported:

### image

Description:

