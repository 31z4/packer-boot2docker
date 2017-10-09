Vagrant.configure("2") do |config|
  config.ssh.username = "docker"
  config.ssh.password = "tcuser"
  config.ssh.insert_key = false
  config.ssh.shell = "sh"

  config.vm.provider "virtualbox" do |v|
    v.customize "pre-boot", [
      "storageattach", :id,
      "--storagectl", "IDE Controller",
      "--port", "0",
      "--device", "1",
      "--type", "dvddrive",
      "--medium", File.expand_path("../boot2docker.iso", __FILE__),
    ]
  end
end
