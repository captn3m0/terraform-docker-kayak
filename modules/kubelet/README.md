## Required Inputs

The following input variables are required:

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

### asset\_dir\_volume\_name

Description:

Type: `string`

Default: `"k8s-assets"`

### dns\_ip

Description:

Type: `string`

Default: `"10.25.0.10"`

### node\_label

Description: kubelet version

Type: `string`

Default: `"node-role.kubernetes.io/master"`

### node\_taints

Description: node taints

Type: `string`

Default: `"node-role.kubernetes.io/master=:NoSchedule"`

### version

Description: kubelet version

Type: `string`

Default: `"1.13.2"`

