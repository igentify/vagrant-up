# Vagrant #

Welcome to the vagrant presentation. In this repo you will find explanations and short demos to get you started quickly.
Clone this repo using your favorite IDE and follow the steps to start using Vagrant. 

You can always go to the vagrant website to get the full documentation @ https://www.vagrantup.com/intro/index.html

## What it is?
Design over ruby, vagrant is a tool for configuring and managing complete virtual environments. Whether it is a single machine or multi machine environemnt,
it gives you the ability to create it detached from the vendor (provider) and your machine.

## vagrant vs Docker
While docker is used to deliver application in controlled environment, vagrant is delivering the environment in a controlled way.

## Components:
1. box - virtual machine image - Search for boxes at https://app.vagrantup.com/boxes/search
    * Windows - license issue
    * Linux
2. vagrant file - virtual machine configuration using DSL.
3. Cli - a complete api tool for controlling the environmeny
4. Plugins

## Coding with Vagrant ##
The working folder is automatically (unless changed) shared inside the VM. You can change files in it and see the changes directly inside the VM.
You can also map additional folders from the host to the VM

## Installing Vagrant ##
Go to https://www.vagrantup.com/downloads.html to download and install vagrant.

Follow the steps in the folders for start using the tool.

```NOTE: This is just a quick jump start. make sure to hope to the full documentation on the vagrant web site```

``If you have any more suggestions for hands on send the ideas to the nearest devops team near your station``