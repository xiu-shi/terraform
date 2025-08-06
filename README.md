# terraform

# cd modules

# terraform init

# terraform plan

# terraform destroy



Initializing the backend...

Successfully configured the backend "s3"! Terraform will automatically

use this backend unless the backend configuration changes.

Initializing provider plugins...

- Reusing previous version of hashicorp/aws from the dependency lock file

- Installing hashicorp/aws v6.7.0...

- Installed hashicorp/aws v6.7.0 (signed by HashiCorp)

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see

any changes that are required for your infrastructure. All Terraform commands

should now work.

If you ever set or change modules or backend configuration for Terraform,

rerun this command to reinitialize your working directory. If you forget, other

commands will detect it and remind you to do so if necessary.

aws_vpc.main: Refreshing state... [id=vpc-04c947becc1a3e5d5]

aws_internet_gateway.igw: Refreshing state... [id=igw-002e772eb60447583]

aws_subnet.subnet2: Refreshing state... [id=subnet-04756df8cfce6692e]

aws_subnet.subnet1: Refreshing state... [id=subnet-027ac2f675059ecf6]

aws_route_table.main: Refreshing state... [id=rtb-02ed1c61399ee43b9]

aws_route_table_association.subnet1: Refreshing state... [id=rtbassoc-09f69569382d42dc6]

aws_route_table_association.subnet2: Refreshing state... [id=rtbassoc-0665d1a7796c24bbb]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:

~ update in-place

Terraform will perform the following actions:

# aws_vpc.main will be updated in-place

~ resource "aws_vpc" "main" {

id = "vpc-04c947becc1a3e5d5"

~ tags = {

- "Name" = "tf-vpc" -> null

"name" = "main-tf-vpc"

}

~ tags_all = {

- "Name" = "tf-vpc" -> null

# (1 unchanged element hidden)

}

# (19 unchanged attributes hidden)

}

Plan: 0 to add, 1 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.

aws_vpc.main: Refreshing state... [id=vpc-04c947becc1a3e5d5]

aws_internet_gateway.igw: Refreshing state... [id=igw-002e772eb60447583]

aws_subnet.subnet2: Refreshing state... [id=subnet-04756df8cfce6692e]

aws_subnet.subnet1: Refreshing state... [id=subnet-027ac2f675059ecf6]

aws_route_table.main: Refreshing state... [id=rtb-02ed1c61399ee43b9]

aws_route_table_association.subnet2: Refreshing state... [id=rtbassoc-0665d1a7796c24bbb]

aws_route_table_association.subnet1: Refreshing state... [id=rtbassoc-09f69569382d42dc6]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:

- destroy

Terraform will perform the following actions:

# aws_internet_gateway.igw will be destroyed

- resource "aws_internet_gateway" "igw" {

- arn = "arn:aws:ec2:eu-west-1:254940635427:internet-gateway/igw-002e772eb60447583" -> null

- id = "igw-002e772eb60447583" -> null

- owner_id = "254940635427" -> null

- region = "eu-west-1" -> null

- tags = {

- "name" = "main-vpc-igw"

} -> null

- tags_all = {

- "name" = "main-vpc-igw"

} -> null

- vpc_id = "vpc-04c947becc1a3e5d5" -> null

}

# aws_route_table.main will be destroyed

- resource "aws_route_table" "main" {

- arn = "arn:aws:ec2:eu-west-1:254940635427:route-table/rtb-02ed1c61399ee43b9" -> null

- id = "rtb-02ed1c61399ee43b9" -> null

- owner_id = "254940635427" -> null

- propagating_vgws = [] -> null

- region = "eu-west-1" -> null

- route = [

- {

- cidr_block = "0.0.0.0/0"

- gateway_id = "igw-002e772eb60447583"

# (11 unchanged attributes hidden)

},

] -> null

- tags = {

- "name" = "main-tf-route-table"

} -> null

- tags_all = {

- "name" = "main-tf-route-table"

} -> null

- vpc_id = "vpc-04c947becc1a3e5d5" -> null

}

# aws_route_table_association.subnet1 will be destroyed

- resource "aws_route_table_association" "subnet1" {

- id = "rtbassoc-09f69569382d42dc6" -> null

- region = "eu-west-1" -> null

- route_table_id = "rtb-02ed1c61399ee43b9" -> null

- subnet_id = "subnet-027ac2f675059ecf6" -> null

# (1 unchanged attribute hidden)

}

# aws_route_table_association.subnet2 will be destroyed

- resource "aws_route_table_association" "subnet2" {

- id = "rtbassoc-0665d1a7796c24bbb" -> null

- region = "eu-west-1" -> null

- route_table_id = "rtb-02ed1c61399ee43b9" -> null

- subnet_id = "subnet-04756df8cfce6692e" -> null

# (1 unchanged attribute hidden)

}

# aws_subnet.subnet1 will be destroyed

- resource "aws_subnet" "subnet1" {

- arn = "arn:aws:ec2:eu-west-1:254940635427:subnet/subnet-027ac2f675059ecf6" -> null

- assign_ipv6_address_on_creation = false -> null

- availability_zone = "eu-west-1a" -> null

- availability_zone_id = "euw1-az2" -> null

- cidr_block = "192.168.1.0/24" -> null

- enable_dns64 = false -> null

- enable_lni_at_device_index = 0 -> null

- enable_resource_name_dns_a_record_on_launch = false -> null

- enable_resource_name_dns_aaaa_record_on_launch = false -> null

- id = "subnet-027ac2f675059ecf6" -> null

- ipv6_native = false -> null

- map_customer_owned_ip_on_launch = false -> null

- map_public_ip_on_launch = false -> null

- owner_id = "254940635427" -> null

- private_dns_hostname_type_on_launch = "ip-name" -> null

- region = "eu-west-1" -> null

- tags = {

- "name" = "main-tf-subnet1"

} -> null

- tags_all = {

- "name" = "main-tf-subnet1"

} -> null

- vpc_id = "vpc-04c947becc1a3e5d5" -> null

# (4 unchanged attributes hidden)

}

# aws_subnet.subnet2 will be destroyed

- resource "aws_subnet" "subnet2" {

- arn = "arn:aws:ec2:eu-west-1:254940635427:subnet/subnet-04756df8cfce6692e" -> null

- assign_ipv6_address_on_creation = false -> null

- availability_zone = "eu-west-1b" -> null

- availability_zone_id = "euw1-az3" -> null

- cidr_block = "192.168.2.0/24" -> null

- enable_dns64 = false -> null

- enable_lni_at_device_index = 0 -> null

- enable_resource_name_dns_a_record_on_launch = false -> null

- enable_resource_name_dns_aaaa_record_on_launch = false -> null

- id = "subnet-04756df8cfce6692e" -> null

- ipv6_native = false -> null

- map_customer_owned_ip_on_launch = false -> null

- map_public_ip_on_launch = false -> null

- owner_id = "254940635427" -> null

- private_dns_hostname_type_on_launch = "ip-name" -> null

- region = "eu-west-1" -> null

- tags = {

- "name" = "main-tf-subnet2"

} -> null

- tags_all = {

- "name" = "main-tf-subnet2"

} -> null

- vpc_id = "vpc-04c947becc1a3e5d5" -> null

# (4 unchanged attributes hidden)

}

# aws_vpc.main will be destroyed

- resource "aws_vpc" "main" {

- arn = "arn:aws:ec2:eu-west-1:254940635427:vpc/vpc-04c947becc1a3e5d5" -> null

- assign_generated_ipv6_cidr_block = false -> null

- cidr_block = "192.168.0.0/16" -> null

- default_network_acl_id = "acl-05d6c9a1ba05a26f7" -> null

- default_route_table_id = "rtb-06959c2eda13833fb" -> null

- default_security_group_id = "sg-0317c2ce306ecfbe2" -> null

- dhcp_options_id = "dopt-0615e6e7e8c184ada" -> null

- enable_dns_hostnames = false -> null

- enable_dns_support = true -> null

- enable_network_address_usage_metrics = false -> null

- id = "vpc-04c947becc1a3e5d5" -> null

- instance_tenancy = "default" -> null

- ipv6_netmask_length = 0 -> null

- main_route_table_id = "rtb-06959c2eda13833fb" -> null

- owner_id = "254940635427" -> null

- region = "eu-west-1" -> null

- tags = {

- "Name" = "tf-vpc"

- "name" = "main-tf-vpc"

} -> null

- tags_all = {

- "Name" = "tf-vpc"

- "name" = "main-tf-vpc"

} -> null

# (4 unchanged attributes hidden)

}

Plan: 0 to add, 0 to change, 7 to destroy.

Do you really want to destroy all resources?

Terraform will destroy all your managed infrastructure, as shown above.

There is no undo. Only 'yes' will be accepted to confirm.

Enter a value: yes

aws_route_table_association.subnet1: Destroying... [id=rtbassoc-09f69569382d42dc6]

aws_route_table_association.subnet2: Destroying... [id=rtbassoc-0665d1a7796c24bbb]

aws_route_table_association.subnet2: Destruction complete after 0s

aws_subnet.subnet2: Destroying... [id=subnet-04756df8cfce6692e]

aws_route_table_association.subnet1: Destruction complete after 0s

aws_route_table.main: Destroying... [id=rtb-02ed1c61399ee43b9]

aws_subnet.subnet1: Destroying... [id=subnet-027ac2f675059ecf6]

aws_subnet.subnet2: Destruction complete after 1s

aws_subnet.subnet1: Destruction complete after 1s

aws_route_table.main: Destruction complete after 1s

aws_internet_gateway.igw: Destroying... [id=igw-002e772eb60447583]

aws_internet_gateway.igw: Destruction complete after 0s

aws_vpc.main: Destroying... [id=vpc-04c947becc1a3e5d5]

aws_vpc.main: Destruction complete after 1s

Destroy complete! Resources: 7 destroyed.

(base) ➜ modules git:(main) ✗
