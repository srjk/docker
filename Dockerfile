from shukabr1/myjenkins-blueocean:1.1

USER root
RUN apt-get install -y wget
RUN wget -c https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.5.0/openshift-client-linux.tar.gz
RUN tar -xvf openshift-client-linux.tar.gz
RUN mv oc /usr/local/bin/oc
RUN mv kubectl  /usr/local/bin/kubectl
USER jenkins
