# LEMP Stack on Vagrant

Will be installed :

* Nginx server (use php7.0-fpm service)

* PHP7.0

* MySQL

* Git


## Installation

For install the LEMP stack, on the box you will execute some commands.

To synchronise file, I've got an issue, so use this plug-in :

```vagrant plugin install vagrant-vbguest```

First, go to ```/vagrant``` folder :
    ```cd /vagrant```

Then, make `install.sh` script executable
    ```chmod 777 install.sh```

To finish, execute the script :
    ```./install.sh```

### VirtualHost

To make VirtualHost please, make sure to edit your host file

    ```sudo nano /etc/hosts```
on unix systems

```192.168.30.10  domain.tld```

Or replace ```192.168.30.10``` by box IP in ```Vagrantfile```
