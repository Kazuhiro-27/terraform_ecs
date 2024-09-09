# プロバイダーの設定
provider "aws" {
  region = "ap-northeast-1"
}

# モジュールの呼び出し
module "vpc" {
  source = "../../modules/vpc"

  project_name         = "my-ecs-project"
  vpc_cidr             = "10.0.0.0/16"
  private_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones   = ["ap-northeast-1a", "ap-northeast-1c","ap-northeast-1d"]
}

module "ecs" {
  source = "../../modules/ecs"

  project_name    = "my-ecs-project"
  task_cpu        = 256
  task_memory     = 512
  container_name  = "my-app"
  container_image = "nginx:latest"
  container_port  = 80
  desired_count   = 1
  subnet_ids      = module.vpc.private_subnet_ids
}