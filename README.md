# Highly Available AWS Web Application
A highly available Node.js web application in AWS cloud using RDS as database.



## Architecture  

![alt text](https://github.com/MedEzzedine/HA-AWS-WebApp/blob/main/Project%20Screenshots/0.png?raw=true)

The VPC follows best architecture practices by having a private and a public subnet in each availability zone. It contains the following resources:
- **Auto scaling group:** Automatically spins up EC2 instances with User Data allowing it to download the source code from [a github repository](https://github.com/MedEzzedine/crud-nodejs-mysql) and then install all its dependencies.
- **Application Load Balancer:** Accepts HTTP requests from the public internet and redirects the traffic to the auto scaling group in the private subnets.
- **AWS RDS for MySQL:** A fully managed relational database that offers high availability and redundancy. It is placed in the private subnet for security.
- **Bastion host:** An EC2 instance situated in the public subnet that allows SSH access to the web servers for maintenance and patching.
