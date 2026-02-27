PROJECT - Cost Optimized AWS Architecture using Terraform


Project Overview:
   This project provisions a cost-optimized AWS infrastructure using Terraform in the ap-south-1 (Mumbai) region.



The architecture deploys:
  
   Custom VPC
   
   Private Subnet
   
   EC2 Instance (No Public IP)
   
   IAM Role with SSM access
   
   VPC Endpoints for secure private communication

The goal is to reduce AWS cost by avoiding NAT Gateway and public exposure while maintaining secure access using AWS Systems Manager (SSM).



Architecture Components:
    
    VPC with CIDR 10.0.0.0/16
    
    Private Subnet (10.0.1.0/24)
    
    EC2 instance inside private subnet
    
    IAM Role attached with AmazonSSMManagedInstanceCore
    
    VPC Endpoints for private AWS access



Cost Optimization Strategy:
   
    No NAT Gateway (saves money)
    
    No Public IP for EC2
    
    Private subnet deployment
    
    SSM Session Manager for secure access
    
    Tag-based resource management



Tools Used:
  
   Terraform
   
   Amazon Web Services
   
   AWS Systems Manager



📂 Project Structure
├── provider.tf
├── main.tf
├── network.tf
├── iam.tf
├── variables.tf
├── outputs.tf
└── README.md   



How to Run:
  
  terraform init
  
  terraform plan
  
  terraform apply



To destroy resources:
  
   terraform destroy


Security Highlights:
    
     EC2 has no public exposure
     
     IAM least privilege access
     
     Secure SSM based connectivity
