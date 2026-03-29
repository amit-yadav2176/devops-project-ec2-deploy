DevOps CI/CD Pipeline Project (EC2 Deployment)

 Project Overview

This project demonstrates a complete DevOps pipeline using modern tools and practices.
The application is containerized using Docker and automatically deployed to an AWS EC2 instance using CI/CD.

 Tools & Technologies Used

- CI/CD: GitHub Actions
- Containerization: Docker
- Cloud: AWS EC2
- Infrastructure as Code: Terraform
- Monitoring: Prometheus & Grafana
- Backend: Node.js

 Project Architecture

GitHub → GitHub Actions → DockerHub → AWS EC2 → Browser


 Features

- ✅ Automated CI/CD pipeline
- ✅ Dockerized application
- ✅ Auto deployment on EC2
- ✅ Infrastructure provisioning using Terraform
- ✅ Monitoring using Prometheus & Grafana

📁 Project Structure

devops-pipeline/
│── app/
│   └── server.js
│── Dockerfile
│── .github/workflows/
│   └── deploy.yml
│── terraform/
│   └── main.tf
│── docker-compose.yml


 CI/CD Pipeline Flow

1. Code pushed to GitHub
2. GitHub Actions triggers pipeline
3. Docker image is built
4. Image is pushed to DockerHub
5. EC2 instance pulls latest image
6. Application is deployed automatically



 Docker Setup

docker build -t <your-docker-username>/devops-app .
docker run -d -p 3000:3000 devops-app


 EC2 Deployment

- Launch EC2 instance
- Install Docker
- Open required ports: 22, 3000, 9090, 3001
- Application runs on:

http://<EC2-PUBLIC-IP>:3000

GitHub Secrets

Add the following secrets:

- DOCKER_USER
- DOCKER_PASS
- EC2_HOST
- EC2_KEY

 Monitoring

- Prometheus → http://<EC2-IP>:9090
- Grafana → http://<EC2-IP>:3001

Default Login:

- Username: admin
- Password: admin

 Terraform Setup

cd terraform
terraform init
terraform apply

 How to Run the Project

git clone https://github.com/your-username/devops-pipeline.git
cd devops-pipeline

Push code to trigger deployment:

git add .
git commit -m "Deploy project"
git push origin main

 Conclusion

This project showcases a real-world DevOps workflow including:

- Automation
- Scalability
- Continuous Deployment
- Monitoring
