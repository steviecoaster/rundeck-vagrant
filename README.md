# System Requirements

* Internet access to download packages from public repositories.
* [Vagrant 2.2.9](http://downloads.vagrantup.com)

_Optional_

* Vagrantey PowerShell Module (`Install-Module Vagrantey -Force`)

## Demo VM Startup

This is a single-machine vagrant configuration that installs
and configures a RunDeck Community Edition instance.

First things first:

1. Clone this repository: `git clone https://github.com/steviecoaster/rundeck-vagrant.git`

Using vagrant:

1. `cd rundeck-vagrant`
2. `vagrant up`

Using Vagrantey

1. `cd rundeck-vagrant`
2. `Set-VagrantConfig -Name RunDeck -Path .`
3. `Start-VagrantEnvironment -Environment RunDeck`

By using Vagrantey it doesn't matter where you are in the shell. Running `Start-VagrantEnvironment` will do the right thing to properly bring the environment up, and leave you back in your $PWD. Super convenient.

## Accessing RunDeck

You can access the RunDeck from your host machine using the following URLs:

* RunDeck: http://192.168.50.2:4440

Default Credentials are:

* Username: admin
* Password: admin
