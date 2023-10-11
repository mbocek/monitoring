# Local environment

For building local environment you will need [docker desktop](https://www.docker.com/get-started/) and [terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).

You can build dev environment:
```bash
cd test/terraform
terraform init
terraform apply
```

Modify hosts file `/etc/hosts`
```
127.0.0.1 prometheus.local
127.0.0.1 grafana.local
127.0.0.1 alertmanager.local
```