# Kubernetes Deployment for Demo Application

Este repositório contém os arquivos necessários para o deploy de uma aplicação demo em um cluster Kubernetes. A aplicação é composta por:

- **Frontend**: Interface do usuário.
- **Backend**: Lógica de negócios.
- **Database**: Banco de dados PostgreSQL.


## Estrutura do Repositório db

- **db-pvc.yaml**: PersistentVolumeClaim que garante armazenamento persistente de 1 GiB para os dados do banco de dados PostgreSQL.
- **db-configmap.yaml**: ConfigMap que armazena as credenciais e informações básicas do banco de dados PostgreSQL.
- **db-statefulset.yaml**: Configuração do banco de dados usando StatefulSet.
- **db-service.yaml**: Serviço Headless para o banco de dados.


## Pré-requisitos

Antes de começar, certifique-se de:

1. Ter um cluster Kubernetes em funcionamento (Minikube, Docker Desktop ou outro).
2. Ter o `kubectl` instalado e configurado.

## Passos para Deploy

### 1. Deploy do Banco de Dados

1. Deploy do banco de dados com StatefulSet e serviço:

   ```bash
   kubectl apply -f db-pvc.yaml
   kubectl apply -f db-configmap.yaml
   kubectl apply -f db-statefulset.yaml
   kubectl apply -f db-service.yaml
   ```
2. Verifique se o banco de dados está funcionando:

  ```bash
  kubectl get pods
  kubectl logs db-0
  ```

### 2. Deploy do Backend

## Estrutura do Repositório db

- **backend-configmap.yaml**: ConfigMap que define as variáveis de ambiente para a configuração da conexão do backend com o banco de dados.
- **backend-hpa.yaml**: Configuração do backend.
- **backend-deployment.yaml**: Configuração do backend.
- **backend-service.yaml**: Serviço para expor o backend.

1. Deploy do backend e do serviço correspondente:

  ```bash
  kubectl apply -f backend-deployment.yaml
  kubectl apply -f backend-service.yaml
  ```
2. Verifique o backend:

  ```bash
  kubectl get pods
  kubectl logs <backend-pod-name>
  ```

### 3. Deploy do Frontend

## Estrutura do Repositório db

- **frontend-configmap.yaml**: ConfigMap que armazena a URL de conexão entre o frontend e o backend.
- **frontend-deployment.yaml**: Configuração do frontend.
- **frontend-service.yaml**: Serviço para expor o frontend.

1. Deploy do frontend e do serviço correspondente:

  ```bash
  kubectl apply -f frontend-deployment.yaml
  kubectl apply -f frontend-service.yaml
  ```

2. Verifique o frontend:

  ```bash
  kubectl get pods
  kubectl logs <frontend-pod-name>
  ```

### 4. Acessar a Aplicação

Você pode acessar o frontend utilizando o port-forward:

  ```bash
  kubectl port-forward service/frontend 8080:80
  Acesse no navegador: http://localhost:8080
  ```

# Limpeza do Ambiente

Para remover todos os recursos criados, execute em cada um dos diretorios:

  ```bash
  kubectl delete -f .
  ```

