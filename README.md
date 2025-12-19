# Multi-Cloud Auto Deployment using Terraform (AWS + GCP Free Tier)

## 📌 Project Overview

This project demonstrates **multi-cloud infrastructure automation** using **Terraform**. With a **single command**, resources are provisioned simultaneously on **AWS** and **Google Cloud Platform (GCP)** using only **Free Tier** services.

The deployment automatically installs **NGINX** on both cloud servers and validates availability using simple HTTP checks and optional DNS-based routing.

---

## 🎯 Objective

* Provision infrastructure on **AWS and GCP at the same time**
* Use **Infrastructure as Code (IaC)** with Terraform
* Enable **auto-deployment** using startup scripts
* Validate deployment with **one command**

---

## 🛠️ Tools & Technologies

* **Terraform** – Infrastructure as Code
* **AWS Free Tier** – EC2 (t2.micro)
* **GCP Free Tier** – Compute Engine (e2-micro)
* **NGINX** – Web server
* **DNSMasq (Optional)** – Local DNS routing simulation

---

## 🗂️ Project Structure

```
multicloud-terraform/
│── main.tf              # Terraform providers
│── aws.tf               # AWS EC2 configuration
│── gcp.tf               # GCP VM configuration
│── outputs.tf           # Output values (Public IPs)
│── script.sh            # NGINX auto-install script
│── README.md            # Project documentation
```

---

## ⚙️ Prerequisites

Before running this project, ensure:

* Terraform installed (`terraform -v`)
* AWS CLI installed and configured (`aws configure`)
* Google Cloud SDK installed and initialized (`gcloud init`)
* AWS & GCP Free Tier accounts

---

## 🔐 Authentication Setup

### AWS

```bash
aws configure
```

Stores credentials in `~/.aws/credentials`

### GCP

```bash
gcloud init
gcloud services enable compute.googleapis.com
```

---

## 🚀 Deployment Steps

Run the following commands:

```bash
terraform init
terraform apply -auto-approve
```

Terraform will:

* Download AWS & GCP provider plugins
* Create EC2 instance on AWS
* Create VM instance on GCP
* Install and start NGINX automatically

---

## 📤 Outputs

After deployment, Terraform displays:

* AWS EC2 Public IP
* GCP VM Public IP

Example:

```
aws_public_ip = 54.xxx.xxx.xxx
gcp_public_ip = 34.xxx.xxx.xxx
```

---

## ✅ Validation

Open the public IPs in a browser or run:

```bash
curl http://<AWS_PUBLIC_IP>
curl http://<GCP_PUBLIC_IP>
```

Expected Output:

```
Running on <hostname>
```

---

## 🌐 Optional: DNS-Based Routing (Simulation)

Using DNSMasq, traffic can be routed to the healthy server based on availability.

---

## 📸 Deliverables

* Terraform scripts
* Infrastructure diagram
* AWS & GCP dashboard screenshots
* Deployment validation screenshots

---

## 🧠 Learning Outcomes

* Multi-cloud provisioning
* Terraform provider usage
* Auto-deployment with startup scripts
* Cloud authentication best practices
* DevOps project workflow

---

## 🧾 Resume Description

> Implemented a multi-cloud auto-deployment solution using Terraform to provision AWS and GCP resources simultaneously, with automated NGINX installation and validation via HTTP checks.

---

## 🧹 Cleanup

To destroy all resources:

```bash
terraform destroy -auto-approve
```
