Zolertia Vagrant VM
============

Vagrant creates and configures lightweight, reproducible, and portable development environments, providing everything you need to start working in Contiki right away.  Vagrant is free and portable across all platforms, to install Vagrant and launch the Contiki work environment, keep reading below.


How to run Zolertia Vagrant VM
============

* Install VirtualBox (free and multiplatform) from [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

* Install Vagrant from [www.vagrantup.com/downloads](www.vagrantup.com/downloads)

* Do `vagrant up` in this folder, you can use the terminal in Unix/OSX or the Windows Command Processor (cmd).

* The provisioned Linux box will begin to configure, load and install all dependencies to run Contiki, this could take a short while.  When it finishes, the vagrant build wil be ready and you can access over SSH, the default access information is:

Host: 127.0.0.1
Port: 2222
Username: vagrant
Private key: .vagrant/machines/default/virtualbox/private_key

From the terminal run `vagrant ssh`, if you are a Windows user you can alternatively use Putty from [http://www.putty.org/](http://www.putty.org)


Using the Zolertia Vagrant VM
============

You should be able to test the following:
```
cd examples/remote
make TARGET=remote savetarget
make remote-example.upload PORT=/dev/ttyUSB1
```
Or:
```
cd examples/z1
make TARGET=z1 savetarget
make test-tmp102.upload && make z1-reset && make login
```
When you are done, close the VM by typing `vagrant destroy`