# kubectl-plugins

&copy; 2022 SiLeader.

## plugins
### kubectl exec-label
+ run `exec` using label selector

```sh
# Execute command in label selected Pod
kubectl exec-label -l app.kubernetes.io/name=myapp -- /bin/ls

# Execute command in Pod
kubectl exec-label myapp -- /bin/ls

# Switch to raw terminal mode; sends stdin to 'bash' in 'test' container
# and sends stdout/stderr from 'bash' back to the client
kubectl exec-label -l app.kubernetes.io/name=myapp -c test -i -t -- bash
```
