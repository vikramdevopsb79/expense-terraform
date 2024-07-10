env = "dev"
# components = {
#   Frontend = {
#     name          = "Frontend"
#     instance_type = "t3.small"
#     port_no       = 80
#
#   }
#   mysql = {
#     name          = "mysql"
#     instance_type = "t3.small"
#     port_no       = 3306
#
#   }
#   backend = {
#     name          = "backend"
#     instance_type = "t3.small"
#     port_no       = 8080
#   }
#
# }
# prometheus_servers = ["172.31.81.33/32"]
vpc = {
  main = {
    vpc_cidr_block = "10.0.0.0/16"
  }
}