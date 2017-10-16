# Edit files on the fly #

This is a short demo to show how you can change files while the environment is still up.

## Shared folders ##
Vagrant allows us to define shared folders between the VM and the host machine. By default, the current working folder (Where the vagrant file is located)
is mapped to the machine _/vagrant_  folder.

1. To start lets run __vagrant up__ to start the machine (This might take a while since we install and pull docker containers)
2. Once the process completes, browse to http://192.168.20.21
3. Now connect to the machine using __vagrant ssh__
4. Run _ls /vagrant_ - make sure you see all the files that you can see in the IDE under the current folder
5. Exit the machine, and change the index.html and refresh the browser. Make sure you can see the changes reflected.
6. Shut down the machine and remove it