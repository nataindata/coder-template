forked from https://github.com/coder/coder/tree/main/examples/templates/docker

error:
```Terraform 1.4.6
docker_volume.home_volume: Plan to create
docker_image.main: Plan to create
coder_agent.main: Plan to create
coder_app.code-server: Plan to create
docker_container.workspace[0]: Plan to create
docker_volume.home_volume: Creating...
docker_image.main: Creating...
coder_agent.main: Creating...
coder_agent.main: Creation complete after 0s [id=67d3999c-b3ff-42c2-b022-70675c667d79]
coder_app.code-server: Creating...
coder_app.code-server: Creation complete after 0s [id=f4d78934-d686-4c39-81a9-3a22f9a9b2fc]
docker_volume.home_volume: Creation complete after 0s [id=coder-c3aba5c6-bdaa-4429-a8e7-6df0b8d9bba2-home]
docker_image.main: Still creating... [10s elapsed]
docker_image.main: Creation errored after 16s
Error: process "/bin/sh -c pip3 install -v \"apache-airflow==${AIRFLOW_VERSION}\"" did not complete successfully: exit code: 1

on main.tf line 157, in resource "docker_image" "main":
  157: resource "docker_image" "main" {
```
