Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/focal64"
  end

$script = <<SCRIPT
sudo apt update
sudo apt install -y cmake g++ make mtools python unzip

install -D -m 644 /vagrant/workspaces/.gitignore ~/workspaces/.gitignore
SCRIPT
  