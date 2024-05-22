# Technical- Exercise
# Overview
This project demonstrates the automated deployment of a Hello World application in an Azure Kubernetes Service (AKS) cluster using Terraform. It includes provisioning a virtual machine, storage account, AKS cluster, SQL Server, and Kubernetes ingress.

# Project Structure
The project structure comprises the following key components:

main.tf: Terraform configuration file defining the infrastructure resources.

variables.tf: Terraform variables file defining input parameters for customization.

app.py: Python script containing the logic for the Hello World application.

Dockerfile: Dockerfile for constructing the container image of the Hello World application.

.gitignore: Git ignore file to exclude non-essential files from version control.

# Accessing the Application:

Upon successful deployment, obtain the public IP or DNS of the Kubernetes Ingress.
Access the Hello World application by navigating to the provided URL in a web browser.

# Additional Notes
Ensure accurate configuration of environment variables for database connectivity within app.py.
Tailor the Dockerfile and application code to meet specific project requirements and standards.
