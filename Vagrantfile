
Vagrant.configure("2") do |config|
  PROJECT="anvils"
  RDIP="192.168.50.2"
  RUNDECK_YUM_REPO="https://bintray.com/rundeck/rundeck-rpm/rpm"
  #RUNDECK_YUM_REPO="https://bintray.com/rundeck/ci-staging-rpm/rpm"

  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end

  config.ssh.insert_key = false
  config.vm.box = "ubuntu/xenial64"
  config.ssh.insert_key = true
  #config.vm.box = "bento/centos-6.7"


  # uncomment for faster performance
  config.vm.provider "virtualbox" do |vb|
   vb.cpus = "4"
   vb.memory = "4096"
  end

  config.vm.define :rundeck do |rundeck|
    rundeck.vm.hostname = "rundeck.anvils.com"
    rundeck.vm.network :private_network, ip: "#{RDIP}"
    rundeck.vm.network :forwarded_port, guest: 4440, host: 444, id: "RunDeck", auto_correct: true, host_ip: "127.0.0.1"
   ####################

    rundeck.vm.provision :shell, :path => "install-rundeck.sh", :args => "#{RDIP} #{RUNDECK_YUM_REPO}"
  end
end
