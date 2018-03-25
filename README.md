# Gluflux 
The idea is to find define a Mainflux configuration which runs in Kubernets and/or Openshift environments. 

## Current status
The docker-compose.yml holds the container information for the mainflux platform. 
* Postgres image from Redhat used
* Mainflux platform configuration without NGINX and Routes

## ToDo's
* Define a HA Postgres configuration with persistant db storage
* Check if NGINX is needed in the composotion including the configuration and https or
usage of Openshift router is sufficient 
* Expose MQTT to outside world

## Start
### Docker Compose
```$ COMPOSE_HTTP_TIMEOUT=300 docker-compose up```
This will ensure that all parts will start without any problems. You can also have a look at https://github.com/mainflux/mainflux/issues/179 which will give more explanation about this.

### Kubernetes or Openshift
To start the containers directly in Kubernets or Openshift you can use kompose. More information about kompose you'll find at https://github.com/kubernetes/kompose.

First of all logon to the system. For openshift visit https://docs.openshift.com/enterprise/3.2/cli_reference/get_started_cli.html and for Kubernetes visit https://kubernetes.io/docs/reference/kubectl/overview/ to get more information.

After you are logged in you can use following command in order to start the composition.

**Kubernetes**
```$ kompose up```

**Openshift**
```$ kompose --provider openshift up```


### Start and expose manager, http-adapter and mqtt-adapter services to the outside on Openshift

Start following script
```$ ./startmainfluxonoc.sh```

**Note:** for using MQTT in minishift use portforwarding as the simple solution or configure the ingress IP as described here https://docs.openshift.com/container-platform/3.3/dev_guide/getting_traffic_into_cluster.html

 
