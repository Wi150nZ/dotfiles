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
    printf "> error installing hyperkit\n"
    exit 1
  }
fi

# install hyperkit driver for minikube
printf "installing hyperkit driver for minikube...\n"
printf "> fetching docker-machine-driver-hyperkit binary...\n"
curl -LOf# https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-hyperkit || {
  printf "> error fetching hyperkit driver\n"
  exit 1
}
printf "> moving binary to usr/local/bin...\n"
sudo install -o root -g wheel -m 4755 docker-machine-driver-hyperkit /usr/local/bin/ || {
  printf "> error moving binary\n"
  exit 1
}
# clean up the left over file that we downloaded
rm -rf docker-machine-driver-hyperkit

# install kubectl
printf "installing kubectl...\n"
if [ ! -z $(command -v kubectl) ]
then
  printf "> kubectl already installed\n"
else
  curl -LOf# https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/darwin/amd64/kubectl || {
    printf "> error installing kubectl\n"
    exit 1
  }
fi

# install minikube
printf "install minikube...\n"
if [ ! -z $(command -v minikube) ]
then
  printf "> minikube already installed\n"
else
  brew cask install minikube || {
    printf "> error installing minikube\n"
    exit 1
  }
fi


# configure minikube to use hyperkit as the default vm driver
printf "setting hyperkit as default vm driver...\n"
minikube config set vm-driver hyperkit

printf "completed!\n"
exit 0