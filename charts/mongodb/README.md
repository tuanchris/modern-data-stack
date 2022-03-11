# Bitnami mongodb helm chart

# Add bitnami repository for mongodb

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
```

# Install mongodb helm chart 

```bash
helm install mongodb bitnami/mongodb -f values.yaml 
```
Here values.yaml file is custome variable file for helm chart, also we can add namespace if required.
