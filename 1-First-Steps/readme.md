# Welcome to Vagrant #

It this short tutorial, we will init a new vagrant file and start a machine.
We will than connect to the machine to explore it a bit.
Few short commands and we will shut it down and clean after us.

## start a new machine ##
In vagrant, the environment is described using what we call a Vagrantfile. This is a declarative file in Ruby which describe the environment.

To create a new file open the command prompt from an empty folder and run **_vagrant init ubuntu/trusty64_**
Congratulations, you just created your first file. in the file you should have the minimal configuration to start working.

Now run **_vagrant up_** and watch the output to the console.
Congratulations you've just created an ew VM environment with one machine.


## Access the machine ##
To access the machine run **_vagrant ssh_**
Run few linux commends to see that you are not at your station anymore. 
Run **_ip -4 addr_** to see the IPs. remember the IP as we are about to change it.

## Change the machine and reload ##
Exit the machine. 
On your host machine run **_ping 192.168.33.10_** and see that you dont get an answer.
In the vagrant file we created in the first step uncoment the line **_# config.vm.network "private_network", ip: "192.168.33.10"_**
Now run **_vagrant reload_**
Re-connect to the machine and check the IP now. You should see the ip 192.168.33.10 as an ip of the machine.
Exit to the host machine and ping the ip again, you should now get respong from the machine.

## Add provision steps ##
Provision is the phase where we configure the environment using shell or configuration management utilities.

Now lets changethe machine a bit.
Open your browser and try to access http://192.168.33.10 - since we get no respond, lets try and change that.
Uncomment the section bellow in the vagrant file:
```shell
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
```
Noe tun **_vagrant provision_**. When the process ends, refresh the browser and make sure you see the deafult page of an apache server.


## Suspend the machine ##
Run **_vagrant halt_**    - Check that the machine is powered off in virtual box

## Stop and Remove the machine ##
Run **_vagrant destroy -f_**   - Check that the virtual machine is removed from VirtualBox