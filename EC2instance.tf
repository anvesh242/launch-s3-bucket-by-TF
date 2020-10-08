Pre requisites:  terraform,GIT,AWS

Step 1: Go to  terraform website (https://www.terraform.io/downloads.html)and download windows (64 bit)terraform and save terraform .exe file on desktop for a while.
Step 2 :under this location (C:\Users\anvesh>)create a  bin directory like below.
               C:\Users\anvesh> mkdir bin
Step 3: move terraform.exe file to bin directory like below. (so any ware you can type terraform system                 will recognize)
       C:\Users\anvesh> mv .\Desktop\terraform.exe bin
Step 4: search environment variables in windows and edit the path like below 

	








Step5 : 





Step 6:
	• Log on to AWS console
	• Search for IAM
	• Create username of terraform with programmatic access like below
	
	
	
	
	
	
	
	Step 7:download .csv file and save on the desktop.
	
	
	Step8 : open a notepad and copy below values and save  in anvesh's aws  folder with all files format
	
	
	aws_access_key_id=AKIAW2M7ZRWKE34H6GV5
	aws_secret_access_key=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.
	
	Step 8: Go to powershell and check like below
	
	
	PS C:\Users\anvesh\.aws> ls
	
	
	    Directory: C:\Users\anvesh\.aws
	
	
	Mode                 LastWriteTime         Length Name
	----                 -------------         ------ ----
	-a----         8/18/2020   4:05 PM            115 credentials.txt
	
	
	PS C:\Users\anvesh\.aws> mv .\credentials.txt .\credentials
	
	
	Step 9 : If you don’t have git download and create folder named called tf_code and go to that folder and type git init
	Step 10 : Create first_code.tf and place below code .
	
	$ cat first_code.tf
	provider "aws" {
	  profile = "default"
	  region  = "us-east-1"
	
	}
	resource "aws_s3_bucket" "tf_course" {
	  bucket = "tf-course-20200818"
	  acl    = "private"
	}
	Step 10 :git add first_code.tf
	Git commit -am "commit message"
	 
	git config --global user.email "anvesh.242@gmail.com"
	  git config --global user.name "anvesh"
	
	• Terraform init
	• Terraform apply
	
	
	• To destroy the s3 bucket we can use below command.
	Terraform plan -destroy
	
	
	
	
	• By doing below command it will create a example plan
	terraform  plan -destroy  -out=example.plan
	
	



	• To show the plan 
	terraform show example.plan
	
	
	
	
	
	
	Terraform State :
	
	
	
	
	
	
	Terraform state show (security group )
	
	
	Terraform Graph:
	
	

	
	
	
	Resources:
	
	
	
	---------------------------------------------------------------------------------------------------------------
	Install Terraform on Ubuntu 20.04 |18.04 
	
	
	Step 1:
	
	sudo apt-get install wget unzip
	
	anvesh@ubuntu:~/projects$ sudo apt-get install wget unzip
	
	
	Step 2:
	
          TER_VER=`curl -s https://api.github.com/repos/hashicorp/terraform/releases/latest | grep tag_name | cut -d: -f2 | tr -d \"\,\v | awk '{$1=$1};1'`

Step 2:
wget https://releases.hashicorp.com/terraform/0.13.3/terraform_${TER_VER}_linux_amd64.zip

Step 3:

	anvesh@ubuntu:$ unzip terraform_0.13.3_linux_amd64.zip
	
	This will create a terraform binary file on your working directory. Move this file to the directory/usr/local/bin.
	
	Step 4:

	anvesh@ubuntu:$ sudo mv terraform /usr/local/bin/
	
	Step 5:
----------------------------------------------------------------------------------------------------------------------------------------------------------
	anvesh@ubuntu:~$ which terraform
	/usr/local/bin/terraform
	anvesh@ubuntu:~$ 
	
	-----------------------------------------------------------------------------------------------------------------------
	Step-6:
	anvesh@ubuntu:~$ terraform -version
	Terraform v0.13.3
	anvesh@ubuntu:~$ 
	-----------------------------------------------------------------------------------------------------------------------
	Step 7:
anvesh@ubuntu:~$ terraform
Usage: terraform [-version] [-help] <command> [args]

The available commands for execution are listed below.
The most common, useful commands are shown first, followed by
less common or more advanced commands. If you're just getting
started with Terraform, stick with the common commands. For the
other commands, please read the help and docs before usage.

Common commands:
    apply              Builds or changes infrastructure
    console            Interactive console for Terraform interpolations
    destroy            Destroy Terraform-managed infrastructure
    env                Workspace management
    fmt                Rewrites config files to canonical format
    get                Download and install modules for the configuration
    graph              Create a visual graph of Terraform resources
    import             Import existing infrastructure into Terraform
    init               Initialize a Terraform working directory
    login              Obtain and save credentials for a remote host
    logout             Remove locally-stored credentials for a remote host
    output             Read an output from a state file
    plan               Generate and show an execution plan
    providers          Prints a tree of the providers used in the configuration
    refresh            Update local state file against real resources
    show               Inspect Terraform state or plan
    taint              Manually mark a resource for recreation
    untaint            Manually unmark a resource as tainted
    validate           Validates the Terraform files
    version            Prints the Terraform version
    workspace          Workspace management

All other commands:
    0.12upgrade        Rewrites pre-0.12 module source code for v0.12
    0.13upgrade        Rewrites pre-0.13 module source code for v0.13
    debug              Debug output management (experimental)
    force-unlock       Manually unlock the terraform state
    push               Obsolete command for Terraform Enterprise legacy (v1)
    state              Advanced state management
anvesh@ubuntu:~$ 


--------------------------------------------------------------------------------------------------------------
Using Terraform to Manage Infrastructure:
Step 8:
anvesh@ubuntu:~$ mkdir projects
---------------------------------------------------------------------------------------------------------------------
Step 9:
anvesh@ubuntu:~$ cd projects/
anvesh@ubuntu:~/projects$ 

-----------------------------------------------------------------------------------------------------------------------
Step 10:
Create Terraform main configuration file.

anvesh@ubuntu:~/projects$ touch main.tf
---------------------------------------------------------------------------------------------------------------------
Step 11:
anvesh@ubuntu:~/projects$ cat main.tf 
# Provider
 provider "aws" {
   access_key = "AKIAJRQQKJVZFADXQM3A"
   secret_key = "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"
   region = "us-east-1"
 }
anvesh@ubuntu:~/projects$ 



------------------------------------------------------------------------------------------------------------------------------

anvesh@ubuntu:~/projects$ terraform init

Initializing the backend...

Initializing provider plugins...
- Using previously-installed hashicorp/aws v3.7.0

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, we recommend adding version constraints in a required_providers block
in your configuration, with the constraint strings suggested below.

* hashicorp/aws: version = "~> 3.7.0"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
anvesh@ubuntu:~/projects$ 

Terraform will automatically download provider configured to .terraform directory.



=-----------------------------------------------------------------------------------------------------------------
Let’s now add resource section to create AWS VPC and Subnet resources by editing the main.tf file.
anvesh@ubuntu:~/projects$ cat main.tf
provider "aws" {
  access_key = "AKIAJRQQKJVZFADXQM3A"
  secret_key = "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"
  region = "us-east-1"
 }
# Retrieve the AZ where we want to create network resources
data "aws_availability_zones" "available" {}

# VPC Resource
resource "aws_vpc" "main" {
  cidr_block = "172.31.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "Test-vpc"
    Environment = "Test"
  }
}

# AWS subnet resource
resource "aws_subnet" "test" {
 vpc_id = "${aws_vpc.main.id}"
 cidr_block = "172.31.0.0/16"
 availability_zone = "${data.aws_availability_zones.available.names[0]}"
 map_public_ip_on_launch = "false"
 tags = {
   Name = "Test_subnet1"
 }
}
-----------------------------------------------------------------------------------------------------------------------------

anvesh@ubuntu:~/projects$ terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

data.aws_availability_zones.available: Refreshing state...

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_subnet.test will be created
  + resource "aws_subnet" "test" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-1a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.31.0.0/16"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name" = "Test_subnet1"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_vpc.main will be created
  + resource "aws_vpc" "main" {
      + arn                              = (known after apply)
      + assign_generated_ipv6_cidr_block = false
      + cidr_block                       = "172.31.0.0/16"
      + default_network_acl_id           = (known after apply)
      + default_route_table_id           = (known after apply)
      + default_security_group_id        = (known after apply)
      + dhcp_options_id                  = (known after apply)
      + enable_classiclink               = (known after apply)
      + enable_classiclink_dns_support   = (known after apply)
      + enable_dns_hostnames             = true
      + enable_dns_support               = true
      + id                               = (known after apply)
      + instance_tenancy                 = "default"
      + ipv6_association_id              = (known after apply)
      + ipv6_cidr_block                  = (known after apply)
      + main_route_table_id              = (known after apply)
      + owner_id                         = (known after apply)
      + tags                             = {
          + "Environment" = "Test"
          + "Name"        = "Test-vpc"
        }
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Warning: Interpolation-only expressions are deprecated

  on main.tf line 23, in resource "aws_subnet" "test":
  23:  vpc_id = "${aws_vpc.main.id}"

Terraform 0.11 and earlier required all non-constant expressions to be
provided via interpolation syntax, but this pattern is now deprecated. To
silence this warning, remove the "${ sequence from the start and the }"
sequence from the end of this expression, leaving just the inner expression.

Template interpolation syntax is still used to construct strings from
expressions when the template includes multiple interpolation sequences or a
mixture of literal strings and interpolations. This deprecation applies only
to templates that consist entirely of a single interpolation sequence.

(and one more similar warning elsewhere)


------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

anvesh@ubuntu:~/projects$ 
----------------------------------------------------------------------------------------------------------------------------
anvesh@ubuntu:~/projects$ terraform apply
data.aws_availability_zones.available: Refreshing state...

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_subnet.test will be created
  + resource "aws_subnet" "test" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-1a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.31.0.0/16"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name" = "Test_subnet1"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_vpc.main will be created
  + resource "aws_vpc" "main" {
      + arn                              = (known after apply)
      + assign_generated_ipv6_cidr_block = false
      + cidr_block                       = "172.31.0.0/16"
      + default_network_acl_id           = (known after apply)
      + default_route_table_id           = (known after apply)
      + default_security_group_id        = (known after apply)
      + dhcp_options_id                  = (known after apply)
      + enable_classiclink               = (known after apply)
      + enable_classiclink_dns_support   = (known after apply)
      + enable_dns_hostnames             = true
      + enable_dns_support               = true
      + id                               = (known after apply)
      + instance_tenancy                 = "default"
      + ipv6_association_id              = (known after apply)
      + ipv6_cidr_block                  = (known after apply)
      + main_route_table_id              = (known after apply)
      + owner_id                         = (known after apply)
      + tags                             = {
          + "Environment" = "Test"
          + "Name"        = "Test-vpc"
        }
    }

Plan: 2 to add, 0 to change, 0 to destroy.


Warning: Interpolation-only expressions are deprecated

  on main.tf line 23, in resource "aws_subnet" "test":
  23:  vpc_id = "${aws_vpc.main.id}"

Terraform 0.11 and earlier required all non-constant expressions to be
provided via interpolation syntax, but this pattern is now deprecated. To
silence this warning, remove the "${ sequence from the start and the }"
sequence from the end of this expression, leaving just the inner expression.

Template interpolation syntax is still used to construct strings from
expressions when the template includes multiple interpolation sequences or a
mixture of literal strings and interpolations. This deprecation applies only
to templates that consist entirely of a single interpolation sequence.

(and one more similar warning elsewhere)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_vpc.main: Creating...
aws_vpc.main: Creation complete after 4s [id=vpc-0c1a121034a1be4c0]
aws_subnet.test: Creating...
aws_subnet.test: Creation complete after 1s [id=subnet-04af477c5dbad06aa]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
anvesh@ubuntu:~/projects$







