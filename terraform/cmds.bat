@REM https://hub.docker.com/r/hashicorp/terraform


docker run --name terraform-container -i -t hashicorp/terraform:latest plan

docker container remove terraform-container

