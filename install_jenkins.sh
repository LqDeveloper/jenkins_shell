sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io-2023.key
sudo dnf upgrade
# Add required dependencies for the jenkins package
sudo dnf -y install java-17-openjdk 

sudo dnf -y install jenkins

rm -f /usr/bin/java

ln -s /usr/lib/jvm/jre-17/bin/java /usr/bin/java

sudo systemctl enable jenkins

sudo systemctl start jenkins

sudo systemctl status jenkins

sudo firewall-cmd --zone=public --add-port=8080/tcp --permanent

sudo firewall-cmd --reload

sudo firewall-cmd --zone=public --query-port=8080/tcp

