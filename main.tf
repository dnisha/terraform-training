module "networking_module" {
  source = "./networking"
  vpc_cidr = var.vpc_cidr_01
}
