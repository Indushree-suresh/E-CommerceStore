**Multi-Service Node.js E-Commerce Application Deployment Using Terraform and Docker**

**Objective**

Deploy a multi-service Node.js E-Commerce application using Docker and Terraform on AWS.

**Docker Image Creation**

**Dockerfiles Created**

The following Docker images were created:

| Service  | Image Name                     |
| -------- | ------------------------------ |
| Frontend | indusonushivu/frontend-service |
| User     | indusonushivu/user-service     |
| Product  | indusonushivu/products-service |
| Order    | indusonushivu/orders-service   |
| Cart     | indusonushivu/cart-service     |

<img width="1018" height="241" alt="image" src="https://github.com/user-attachments/assets/41225e4d-5b32-45b1-81b8-b775facf9cd3" />

**Docker images push to Docker Hub**
<img width="1647" height="699" alt="image" src="https://github.com/user-attachments/assets/aed672a4-0472-464d-bb8c-bb37d686ccd4" />

**Docker backend container and Miongodb up and running**
<img width="1853" height="288" alt="image" src="https://github.com/user-attachments/assets/6131b88e-fcc4-4d16-a555-a2739206a517" />


**Docker frontend container up and running**
<img width="1835" height="76" alt="image" src="https://github.com/user-attachments/assets/6849df71-cde3-4b3d-8026-95a4b84f7d20" />

**Terraform Infrastructure Provisioning**

**Terraform Configuration**

Resources Created:

* VPC
* Security Group
* EC2 Instance

**Running Instance creates through terraform**
<img width="1816" height="429" alt="image" src="https://github.com/user-attachments/assets/8c47e0b6-c2e4-4b42-a371-bc5f176de515" />

**Security group created**
<img width="1835" height="884" alt="image" src="https://github.com/user-attachments/assets/34a6834a-d9fd-4bb4-aa8e-ad86b5bd160c" />

**VPC Created**
<img width="1818" height="530" alt="image" src="https://github.com/user-attachments/assets/53b5b2c7-8ba5-4a27-b606-610bfca06e7c" />

**Terraform Files crearted in terminal**
**Terraform main.tf File**
<img width="1624" height="767" alt="image" src="https://github.com/user-attachments/assets/162e6346-6120-4e3e-812e-dce6b9e231f7" />
<img width="1233" height="607" alt="image" src="https://github.com/user-attachments/assets/660a63ed-e75d-4398-a228-cbd2dfc42052" />
<img width="1312" height="584" alt="image" src="https://github.com/user-attachments/assets/287aff54-140a-403d-bd84-79a7b3b08df6" />

**Terraform Initialization**
<img width="1175" height="372" alt="image" src="https://github.com/user-attachments/assets/13e63cb1-bb07-4e31-b0f5-4d429e44eba1" />

**Terraform Apply and outputs**
<img width="1291" height="768" alt="image" src="https://github.com/user-attachments/assets/3591fe5a-31dd-4edc-aa35-5bf1bb0a8e86" />
<img width="1148" height="559" alt="image" src="https://github.com/user-attachments/assets/572a8096-6bb6-4b30-ad14-ae475c379d8a" />

**Frontend UI Access**
<img width="1366" height="423" alt="image" src="https://github.com/user-attachments/assets/a20362bf-fd18-4ed4-b5b7-d945eec066ff" />

**Backend Service Running via localhost**
<img width="1025" height="535" alt="image" src="https://github.com/user-attachments/assets/f075c836-2cd7-4b90-a9c2-62303e1caeaf" />


**Challenges and Troubleshooting**

**MongoDB Connectivity Issue**

Problem:
Backend services attempted to connect to localhost:27017 instead of MongoDB container.

Solution:
Configured Docker networking and MongoDB container communication.


**Conclusion**

Successfully:

* Containerized 5 services
* Pushed images to DockerHub
* Provisioned AWS infrastructure using Terraform
* Deployed services on EC2
* Exposed frontend via public IP
* Automated infrastructure provisioning
