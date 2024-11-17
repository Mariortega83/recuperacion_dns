# Copiar archivo de configuración específico para DNSA
cp /vagrant/dnsa-config/named.conf.local /etc/bind/named.conf.local
  
# Copiar archivos de zona
cp /vagrant/dnsa-config/db.ies.test /etc/bind/db.ies.test
cp /vagrant/dnsa-config/db.informatica.ies.test /etc/bind/db.informatica.ies.test
cp /vagrant/dnsa-config/db.aulas.ies.test /etc/bind/db.aulas.ies.test
cp /vagrant/dnsa-config/db.departamentos.ies.test /etc/bind/db.departamentos.ies.test
cp /vagrant/dnsa-config/db.192.168.57 /etc/bind/db.192.168.57

# Reiniciar bind9
systemctl enable bind9
systemctl restart bind9 