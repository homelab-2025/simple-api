group "default" {
  targets = ["debian", "alpine"]
}

target "debian" {
  context = "./"
  dockerfile = "Dockerfiles/Dockerfile.debian"
  tags = [
    "enzo2346/simple-api-debian:latest",
  ]
}

target "alpine" {
  context = "./"
  dockerfile = "Dockerfiles/Dockerfile.alpine"
  tags = [
    "enzo2346/simple-api-alpine:latest",
  ]
}

