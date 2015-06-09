#!/bin/bash

# pull image from DokcerHub

# print hostname
echo -e "hostname: \c" ; hostname

# print begin date
echo -e "begin date: \c" ; date

# 31 slected image
imagelist=(axle-base sultans-bin haproxy cb-shell dnsutils node-metrics container-metrics ruby-base ipsec multilevel drupal jruby openjdk mono glassfish jenkins-slave quickstart-python exhibitor ubuntu-perl swagger-editor serf dnsmasq gocd-base gocd-agent drill ubuntu-perl-dev devmachine buildpack-runner gcc gocd-server buildstep)

for image in ${imagelist[*]};
do
  echo -e "\033[31m \ndocker push kiwenlau/$image:latest \033[0m"
  docker push kiwenlau/$image:latest
done

# print end date
echo -e "end date: \c" ; date


