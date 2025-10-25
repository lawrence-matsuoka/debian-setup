#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

nix-channel --update
home-manager switch
nix-collect-garbage -d

doom upgrade
