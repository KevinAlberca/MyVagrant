# LEMP Stack on Vagrant

Will be installed :

* Nginx server (use php7.0-fpm service)

* PHP7.0

* MySQL

* Git


## Installation

For install the LEMP stack, on the box you will execute some commands.

First, go to ```/vagrant``` folder :
    ```cd /vagrant```

Then, make `install.sh` script executable
    ```chmod 777 install.sh```

To finish, execute the script :
    ```./install.sh```

### VirtualHost

To make VirtualHost please, make sure to edit your host file.
On unix systems :

    sudo nano /etc/hosts

And add this ligne : ```192.168.30.10``` is the internal IP adress of the box ```Vagrantfile```

```192.168.30.10  domain.tld```
