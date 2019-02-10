## Required Inputs

The following input variables are required:

### data\_dir

Description: Directory on host to mount to /etcd-data

Type: `string`

### domain

Description: Host name to advertise

Type: `string`

### pki

Description:

Type: `map`

## Optional Inputs

The following input variables are optional (have default values):

### host\_bind\_ip

Description: IP address to expose the ports on host

Type: `string`

Default: `"0.0.0.0"`

### node\_name

Description: name of the etcd node

Type: `string`

Default: `"controller"`

### version

Description: etcd version

Type: `string`

Default: `"3.3.11"`

