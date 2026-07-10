# Lab Google Kubernetes Engine en GCP

Laboratorio GKE en GCP: En esta proyecto realizó un deploy de un cluster GKE (dentro de una VPC con una subred)  en donde se van a implementar una app en node y una BD en mongo, las cuales van a trabajar de manera conjunto y luego, a través del Load Balancer del cluster,
exponerla a internet.

El deploy del cluster GKE, junto con todas las configuraciones y dependencias, se realizo con la siguiente estructura:

- [main.tf](https://github.com/MatiasMaxRodriguez/Google_Kubernetes_Engine/blob/main/main.tf)
- [.gitignore](https://github.com/MatiasMaxRodriguez/Google_Kubernetes_Engine/blob/main/.gitignore)
- [.terraform.lock.hcl](https://github.com/MatiasMaxRodriguez/Google_Kubernetes_Engine/blob/main/.terraform.lock.hcl)
- [app_and_mongodb/Dockerfile](https://github.com/MatiasMaxRodriguez/Google_Kubernetes_Engine/blob/main/app_and_mongobd/Dockerfile)
- [app_and_mongodb/index.js](https://github.com/MatiasMaxRodriguez/Google_Kubernetes_Engine/blob/main/app_and_mongobd/index.js)
- [app_and_mongodb/package.json](https://github.com/MatiasMaxRodriguez/Google_Kubernetes_Engine/blob/main/app_and_mongobd/package.json)
- [app_and_mongodb/proyecto_gke.yaml](https://github.com/MatiasMaxRodriguez/Google_Kubernetes_Engine/blob/main/app_and_mongobd/proyecto_gke.yaml)
- [app_and_mongodb/.dockerignore](https://github.com/MatiasMaxRodriguez/Google_Kubernetes_Engine/blob/main/app_and_mongobd/.dockerignore)

## Tecnologías utilizadas:

[Google GKE](https://cloud.google.com/kubernetes-engine?hl=es-419)
[Google VPC](https://cloud.google.com/vpc?hl=es-419)
[Terraform](https://developer.hashicorp.com/terraform)
[Docker](https://www.docker.com/)
[Kubernetes](https://kubernetes.io/es/)
[Node.js](https://nodejs.org/es)
[MongoDB](https://www.mongodb.com/es)
