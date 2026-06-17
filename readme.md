# Terraform AWS Instance

## Resources
* EC2 Instance

## Inputs
* project (Required) - User should pass their project name(string)
* environment (Required) - User should pass the environment of their infra (string)
* component (Required) - User should pass the component they are creating infra for (string)
* instance_type (Optional) - User should pass the instance type they need. Default is t2.micro. Users can pass either t2.micro or t2.small or t2.medium
* sg_ids (Required) - User should pass the SG IDs they want to associate with the instance (list)
* ec2_tags (Optional) - User can pass the extra tags they can add to the instance (map)

## Outputs
* public_ip - Public IP of the instance created
* private_ip - Private IP of the instance created