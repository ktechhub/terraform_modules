module "vpc" {
  source         = "./modules/vpc"
  workspace      = var.workspace
  vpc_cidr_block = var.vpc_cidr_block
}

module "subnet" {
  source    = "./modules/subnet"
  vpc_id    = module.vpc.vpc_id
  workspace = var.workspace
}

module "sg" {
  source    = "./modules/sg"
  vpc_id    = module.vpc.vpc_id
  subnet_id = module.subnet.subnet_id
  workspace = var.workspace
}

module "ig" {
  source = "./modules/ig"
  vpc_id = module.vpc.vpc_id
}

module "rt" {
  source    = "./modules/rt"
  workspace = var.workspace
  vpc_id    = module.vpc.vpc_id
  subnet_id = module.subnet.subnet_id
  ig_id     = module.ig.ig_id
}

module "ec2" {
  source         = "./modules/ec2"
  subnet_id      = module.subnet.subnet_id
  sg_id          = module.sg.sg_id
  ami            = var.ami
  instance_type  = var.instance_type
  key_pair_name  = var.key_pair_name
  instance_count = var.instance_count
  workspace      = var.workspace
}
