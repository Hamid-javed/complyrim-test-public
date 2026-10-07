module "logs" {
  source = "./modules/bucket"
  name   = "acme-logs"
}
module "uploads" {
  source = "./modules/bucket"
  name   = "acme-uploads"
}
