# Multi-Service Node.js E-Commerce Application Deployment Using Terraform and Docker

## 1. Project Overview

### Objective

Deploy a multi-service Node.js E-Commerce application using Docker and Terraform on AWS.

### Architecture Diagram

**Screenshot 1: Architecture Diagram**

Insert:

* VPC
* Public Subnet
* Security Group
* EC2 Instance
* Docker Containers
* MongoDB
* Frontend

[INSERT SCREENSHOT 1 HERE]

---

# 2. Docker Image Creation

## Dockerfiles Created

The following Docker images were created:

| Service  | Image Name                     |
| -------- | ------------------------------ |
| Frontend | indusonushivu/frontend-service |
| User     | indusonushivu/user-service     |
| Product  | indusonushivu/products-service |
| Order    | indusonushivu/orders-service   |
| Cart     | indusonushivu/cart-service     |

### Docker Build Process

**Screenshot 2: Docker Build Commands Successfully Executed**

Show:
docker build commands

[INSERT SCREENSHOT 2 HERE]

### Docker Images Verification

**Screenshot 3: Docker Images Available Locally**

Command:

docker images

[INSERT SCREENSHOT 3 HERE]

### DockerHub Repositories

**Screenshot 4: DockerHub Repository Showing All Images**

Show:

* frontend-service
* user-service
* products-service
* orders-service
* cart-service

[INSERT SCREENSHOT 4 HERE]

---

# 3. Terraform Infrastructure Provisioning

## Terraform Configuration

Resources Created:

* VPC
* Public Subnet
* Security Group
* EC2 Instance

### Terraform Files

**Screenshot 5: Terraform main.tf File**

Show:

* VPC
* Subnet
* Security Group
* EC2

[INSERT SCREENSHOT 5 HERE]

### Terraform Initialization

**Screenshot 6: Terraform Init Success**

Command:

terraform init

[INSERT SCREENSHOT 6 HERE]

### Terraform Apply

**Screenshot 7: Terraform Apply Success**

Command:

terraform apply

Show:
Apply complete!

[INSERT SCREENSHOT 7 HERE]

---

# 4. AWS Infrastructure Verification

## VPC

**Screenshot 8: AWS VPC Dashboard**

Show created VPC

[INSERT SCREENSHOT 8 HERE]

## Subnet

**Screenshot 9: AWS Subnet Dashboard**

Show public subnet

[INSERT SCREENSHOT 9 HERE]

## Security Group

**Screenshot 10: Security Group Inbound Rules**

Show:

* 22
* 80
* 3001
* 3002
* 3003
* 3004

[INSERT SCREENSHOT 10 HERE]

## EC2 Instance

**Screenshot 11: EC2 Instance Running**

Show:

* Instance State = Running
* Public IP

[INSERT SCREENSHOT 11 HERE]

---

# 5. Docker Deployment on EC2

## MongoDB Deployment

**Screenshot 12: MongoDB Container Running**

Command:

docker ps

Show mongodb container

[INSERT SCREENSHOT 12 HERE]

## Backend Services Deployment

**Screenshot 13: Backend Containers Running**

Command:

docker ps

Show:

* user-service
* products-service
* orders-service
* cart-service

[INSERT SCREENSHOT 13 HERE]

## Frontend Deployment

**Screenshot 14: Frontend Container Running**

Command:

docker ps

Show frontend-service

[INSERT SCREENSHOT 14 HERE]

---

# 6. Terraform Outputs

### Public IP Output

Command:

terraform output

**Screenshot 15: Terraform Output**

Show:

frontend_public_ip = "100.28.227.81"

[INSERT SCREENSHOT 15 HERE]

---

# 7. Application Verification

## Frontend Access

URL:

http://100.28.227.81

**Screenshot 16: Frontend Application Running in Browser**

Show webpage loaded successfully.

[INSERT SCREENSHOT 16 HERE]

## Service Verification

### Backend Logs

**Screenshot 17: Service Logs**

Show:
docker logs user-service

[INSERT SCREENSHOT 17 HERE]

---

# 8. Challenges and Troubleshooting

## MongoDB Connectivity Issue

Problem:
Backend services attempted to connect to localhost:27017 instead of MongoDB container.

Solution:
Configured Docker networking and MongoDB container communication.

**Screenshot 18: Troubleshooting Logs**

Show actual MongoDB connection error.

[INSERT SCREENSHOT 18 HERE]

---

# 9. Conclusion

Successfully:

* Containerized 5 services
* Pushed images to DockerHub
* Provisioned AWS infrastructure using Terraform
* Deployed services on EC2
* Exposed frontend via public IP
* Automated infrastructure provisioning
