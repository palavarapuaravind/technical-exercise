# Technical- Exercise
#Overview
This project demonstrates the automated deployment of a web-accessible Hello World application within an Azure Kubernetes Service (AKS) cluster. Leveraging Terraform, the deployment orchestrates the creation of essential Azure resources, including a virtual machine (VM), storage account, AKS cluster, SQL Server, and Kubernetes ingress. This showcase underscores best practices in infrastructure as code (IaC) and modern application deployment methodologies.

#Project Structure
The project structure comprises the following key components:

main.tf: Terraform configuration file defining the infrastructure resources.
variables.tf: Terraform variables file defining input parameters for customization.
app.py: Python script containing the logic for the Hello World application.
Dockerfile: Dockerfile for constructing the container image of the Hello World application.
.gitignore: Git ignore file to exclude non-essential files from version control.
Getting Started
#Prerequisites:

Ensure Terraform is installed and configured on your local machine.
Have an active Azure subscription with Azure CLI configured.
Docker should be installed to facilitate container image creation.
#Deployment Steps:

Clone this repository to your local environment.
Navigate to the project directory in the terminal.
Customize the variables in variables.tf to align with your project requirements.
Initialize the Terraform configuration by running terraform init.
Preview the infrastructure changes with terraform plan.
Execute the deployment with terraform apply.
#Accessing the Application:

Upon successful deployment, obtain the public IP or DNS of the Kubernetes Ingress.
Access the Hello World application by navigating to the provided URL in a web browser.
Clean-Up:

To deprovision all deployed resources, execute terraform destroy after testing.
#Additional Notes
Ensure accurate configuration of environment variables for database connectivity within app.py.
Tailor the Dockerfile and application code to meet specific project requirements and standards.
