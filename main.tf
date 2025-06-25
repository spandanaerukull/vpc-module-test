module "vpc" {
    source = "../terraform-aws-vpc-module"
    # this values are harded coded directly
    # /* project = "roboshop1"
    #  environment = "dev"
    # public_subnet_cidr = ["10.0.1.0/24", "10.0.2.0/24"]

    #this values are passed from variable.tf file
    project = var.project
    environment = var.environment   
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
    database_subnet_cidr = var.database_subnet_cidr

    is_peering_required = true # this is hardcoded to true, so that peering connection will be created
}