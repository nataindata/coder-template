forked from https://github.com/coder/coder/tree/main/examples/templates/docker
trying to update Docker to spin up Airflow together with Coder platform, faced the error below.
tf is the same as in the source, updated only Docker file

error:
```Terraform 1.4.6
docker_volume.home_volume: Plan to create
docker_image.main: Plan to create
coder_agent.main: Plan to create
coder_app.code-server: Plan to create
docker_container.workspace[0]: Plan to create
coder_agent.main: Creating...
coder_agent.main: Creation complete after 0s [id=898be843-b2b7-449c-b243-359f0e728a61]
docker_volume.home_volume: Creating...
docker_image.main: Creating...
coder_app.code-server: Creating...
coder_app.code-server: Creation complete after 0s [id=bf039168-725f-4098-98db-17384fad4123]
docker_volume.home_volume: Creation complete after 0s [id=coder-93a57207-109f-461d-a583-71d72d72b7f3-home]
docker_image.main: Still creating... [10s elapsed]
docker_image.main: Still creating... [20s elapsed]
docker_image.main: Still creating... [30s elapsed]
docker_image.main: Still creating... [40s elapsed]
docker_image.main: Creation errored after 42s
Error: process "/bin/sh -c airflow db init" did not complete successfully: exit code: 1

on main.tf line 157, in resource "docker_image" "main":
  157: resource "docker_image" "main" {
```
