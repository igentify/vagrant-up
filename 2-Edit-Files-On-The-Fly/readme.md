# Edit files on the fly #

This is a short demo to show how you can change files while the environment is still up.

## Shared folders ##
Vagrant allows us to define shared folders between the VM and the host machine. By default, the current working folder (Where the vagrant file is located)
is mapped to the machine _/vagrant_  folder.

1. clone the repo to an empty folder on your machine (e.g. git clone https://einchy@bitbucket.org/igentifydevteam/vagrant-up.git)
2. To start lets run __vagrant up__ to start the machine (This might take a while since we install and pull docker containers)
3. Once the process completes, browse to http://192.168.20.21
4. Now connect to the machine using __vagrant ssh__
5. Run _ls /vagrant_ - make sure you see all the files that you can see in the IDE under the current folder
6. Exit the machine, and change the index.html and refresh the browser. Make sure you can see the changes reflected.
7. Shut down the machine and remove it