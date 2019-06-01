#!/bin/bash

# guide used: https://kubernetes.io/docs/tasks/tools/install-minikube/

if [ -z $(command -v brew) ]
then
  printf "homebrew is not install, visit https://brew.sh/ to install\n"
  exit 1
fi


# install hyperkit
printf "installing hyperkit...\n"
if [ ! -z $(brew list | grep hyperkit) ]
then
  printf "> hyperkit already installed\n"
else
  brew install hyperkit || {
    printf "> error installing hyperkit :(\n"
    exit 1
  }
fi

# install hyperkit driver for minikube
printf "installing hyperkit driver for minikube...\n"

# install kubectl
printf "installing kubectl...\n"

# install minishift
printf "install minishift...\n"

# configure minikube to use hyperkit as the default vm driver
# minikube config set vm-driver hyperkit