# Step 1: List your Helm releases to get the release name of Thanos
helm list

# Step 2: Replace <RELEASE_NAME> with the name of your Thanos release
# Get the Thanos admin password using kubectl and decode it
kubectl get secret <RELEASE_NAME>-thanos -o jsonpath="{.data.thanos-admin-password}" | % { [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($_)) }
