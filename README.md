# gitops-app

Sample Go/Echo app for a GitOps workflow experiment

Push to `main` → CI builds the image and bumps its tag in
[gitops-deploy](https://github.com/kirqe/gitops-deploy), which holds the k8s
manifests and applies them. See that repo for cluster setup
