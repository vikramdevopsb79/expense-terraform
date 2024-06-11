env = "dev"
components = {
  Frontend = {
    name          = "Frontend"
    instance_type = "t3.small"
    port_no       = 80

  }
  mysql = {
    name          = "mysql"
    instance_type = "t3.small"
    port_no       = 80

  }
  backend = {
    name          = "backend"
    instance_type = "t3.small"
    port_no       = 8080
  }

}