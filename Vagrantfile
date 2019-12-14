# -*- mode: ruby -*-
# vi: set ft=ruby :
 
if !ENV["TARGET"] or ENV["TARGET"] == "virtualbox" # If no param or "virtualbox"
  load File.expand_path("vagrant/Vagrantfile.virtualbox")
elsif ENV["TARGET"] == "aws"
  load File.expand_path("vagrant/Vagrantfile.aws")
elsif ENV["TARGET"] == "digitalocean"
  load File.expand_path("vagrant/Vagrantfile.digitalocean")
end

# clean up files on the host after the guest is destroyed
Vagrant.configure("2") do |config|
  config.trigger.after :destroy do
    run "rm -Rf .vagrant/"
    run "rm -Rf tmp/"
  end
end
