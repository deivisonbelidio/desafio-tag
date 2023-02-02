# Set the required provider and versions
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.11.0"
    }
  }
}

# Configure the docker provider
provider "docker" {
}

# Pulling docker image
resource "docker_image" "redis-tag" { 
  name	= "redis"
}

# Running Docker container
resource "docker_container" "redis-desafio" {
  name = "redis-desafio"
  image = docker_image.redis-tag.latest
  ports {
    internal = 6379
    external = 6379
  }	
}

