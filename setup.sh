kubectl kustomize external-snapshotter/client/config/crd | kubectl create -f -
kubectl -n kube-system kustomize external-snapshotter/deploy/kubernetes/snapshot-controller | kubectl create -f -
kubectl apply -f longhorn-csi-snapshotclass.yaml
