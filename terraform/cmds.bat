@REM https://hub.docker.com/r/hashicorp/terraform

docker run --name terraform-container -v "c:/Users/benme/source/repos/Docker Scripts/terraform/main.tf":/workspace/main.tf -w /workspace -i -t hashicorp/terraform:latest plan

REM Run the Terraform apply command
docker run --name terraform-container -v c:/Users/benme/source/repos/Docker Scripts/terraform/main.tf:/workspace/main.tf -w /workspace -i -t hashicorp/terraform:latest apply

docker run --name terraform-container -it hashicorp/terraform:latest --entrypoint /bin/sh



docker container remove terraform-container


