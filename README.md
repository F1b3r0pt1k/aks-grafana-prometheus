This Terraform deployment provisions an AKS cluster with Grafana and Prometheus for test. There are two YAML pipelines for Azure DevOps that provision and destroy the cluster. 

The azure-pipelines.yml does the following:

1. Installs Terraform.

2. Runs terraform init, plan, and apply.

3. Retrieves the newly created cluster credentials.

4. Installs Helm

5. Adds Prometheus repo to Helm.

6. Installs Prometheus and Grafana.


