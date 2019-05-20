SERVICE_ACCOUNT=default
NAMESPACE=$(oc project -q)
oc adm policy add-scc-to-user anyuid -z $SERVICE_ACCOUNT -n $NAMESPACE
oc adm policy add-scc-to-user privileged -z $SERVICE_ACCOUNT -n $NAMESPACE
