###########################################################
# Script: startmainfluxonoc.sh
# Author: Michael Linder
# Version: 1.0
# Comment: Script starts the glufux composition on an oc 
#          environment using kompose and create routes 
#          for manager and http adapter
#          MQTT has to be exposed via port-forward 
#          until expose svc with ingress will be added
###########################################################

oc login
oc new-project mainflux
oc project mainflux
kompose --provider openshift up
sleep 10 #wait 10 seconds / assumption is that then all containers are started; better solution to be found
oc create route edge --service=http-adapter #todo setting a secured route
oc create route edge --service=manager #tod setting a secured route
oc expose dc mqtt-adapter --type=LoadBalancer --name=mqtt-ingress #todo exposing the mqtt secure; for dev purpose do portfarwarding 
