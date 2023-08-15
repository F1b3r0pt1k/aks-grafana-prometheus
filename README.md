This Terraform deployment provisions an AKS cluster for a lab environment. There are two YAML pipelines for Azure DevOps that provision and destroy the cluster. 

The azure-pipelines.yml does the following:
    1: Installs Terraform.
    2: Runs Terraform init, plan, and apply.
    3: Retrieves the newly created clusters credentials.
    4: Installs Helm.
    5: Adds Prometheus repo to Helm.
    6. Installs Prometheus and Grafana.

