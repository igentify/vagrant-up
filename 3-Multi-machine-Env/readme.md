# Working with multiple machines #
Now lets spice things up by adding more machines to the equation.
We will create2 nginx machines and makes a call from one to the other to see that they are connected.

## The vagrant file ##
In the vagrant file we have a loop to create 2 machines. In each we will install nginx and curl. Each machine will get its own index file.
We will start both machines and than will do it step by step.

## All or nothing ## 
First lets start everything at once. Run *_vagrant up_*
Browse to http://192.168.19.31 and http://192.168.19.32 and see that each has its own home page.

Now run *_vagrant destroy -f_* to tear down the environment 

## A one by one approach ##
### machine 2 ###
Lets start with machine no 2.
Run the following command **_vagrant up machine2_**
Once the process finish, verify that the home page appears correctly

### machine 1 ###
Now do the same for machine 1.

### Access the machines ###
As you can see we can control each machine by its name. You access to each machine the same way with ssh but this time specify the machine name. vagrant ssh <machine name>
Lets try to access each machine while seeing that if you define the machines correctly, they can talk to each other.
Run *_vagrant ssh machine1 -c 'curl http://192.168.19.32'_* - you should get the page of machine 2
Now do the same from machine 2 - run *_vagrant ssh machine2 -c 'curl http://192.168.19.31'_* - you should get the page of machine 1

## you can also tear down machine one by one ##
Lets first stop machine 1 - *_vagrant halt machine1_* - so the first one is stopped.
Now lets remove everything and clean up the host.