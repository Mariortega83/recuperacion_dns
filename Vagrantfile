Vagrant.configure("2") do |config|
  # Configuración para DNSA (Servidor Maestro)
  config.vm.define "DNSA" do |dnsa|
    dnsa.vm.box = "debian/bookworm64"
    dnsa.vm.network "private_network", ip: "192.168.57.10"
    dnsa.vm.hostname = "dnsa"
    dnsa.vm.provision "shell", path: "provision.sh"
    dnsa.vm.provision "shell", path: "provision-dnsa.sh"
  end

  # Configuración para DNSB (Servidor Esclavo)
  config.vm.define "DNSB" do |dnsb|
    dnsb.vm.box = "debian/bookworm64"
    dnsb.vm.network "private_network", ip: "192.168.57.11"
    dnsb.vm.hostname = "dnsb"
    dnsb.vm.provision "shell", path: "provision.sh"
    dnsb.vm.provision "shell", path: "provision-dnsb.sh"
  end
end
