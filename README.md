# Bookclub 📚🌐

**Bookclub** is a personal website project designed to showcase my interest in books, reading communities, and literary topics.

This is a responsive website template customized using HTML, CSS, and images to match my style.


---

## ✅ What This Project Includes

- 🌐 **Static Web App** (HTML/CSS/JS)
- 🐳 **Dockerized** using a multi-step Dockerfile
- 🛠️ **CI/CD with Jenkins Pipelines**
- 📦 **Docker Image pushed to Amazon ECR**
- ☸️ **Kubernetes Deployment + Service YAML**
- ☁️ **AWS EKS Cluster** running production pods
- 🔁 **Fully Automated Deployment** from GitHub push

---

## 🛠️ Technologies Used

- **Git & GitHub** – version control
- **Jenkins** – CI/CD automation
- **Docker** – containerization
- **Amazon ECR** – image registry
- **Amazon EKS** – managed Kubernetes cluster
- **kubectl** – CLI to manage Kubernetes
- **eksctl** – CLI to provision EKS cluster

---

## 📘 DevOps Journey Notes

- ✅ Created `bookclub-image` using Docker
- ✅ Setup **Jenkins pipeline** to:
    - Build Docker image
    - Tag & Push to ECR
    - Deploy updated image to EKS pods
- ✅ Kubernetes files:
    - `k8s/deployment.yaml` – deploy app to pods
    - `k8s/service.yaml` – expose via LoadBalancer
- ✅ Configured IAM Roles and `aws-auth` for Jenkins access to EKS

> 💡 Now, every push to `main` triggers a Jenkins build → Docker push to ECR → Auto-deploys to EKS!

---

## ❤️ Special Thanks

Built with love and passion for learning AWS, DevOps, and Kubernetes.


