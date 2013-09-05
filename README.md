env
===

System environment configuration


    # Account
    ssh root@pwfisher.com
    useradd pfisher
    passwd pfisher
    visudo
    
    # Git
    yum install git
    cd ~/.ssh
    ssh-keygen -t rsa -C "patrick@pwfisher.com"
    cat ~/.ssh/id_rsa.pub # then add key to account at github.com
    
    # Env
    cd ~/projects
    git clone git@github.com:pwfisher/env.git
    cd env
    bash setup.sh
    
    # Firewall
    yum install iptables
    cp ~/projects/env/iptables /etc/sysconfig/iptables
    echo '1' > /proc/sys/net/ipv4/conf/eth0/forwarding
    service iptables restart
    
    # Node
    rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
    yum install node npm
    
    exit
    ssh pfisher@pwfisher.com
    
    # Server
    sudo npm install -g forever
    cd ~/projects/pwfisher.com
    sudo npm install
    cd ~/projects/ranx.us
    sudo npm install
    cd ~/public_html
    forever start pwfisher.com/proxy.js
    forever start pwfisher.com/index.js
    forever start ranx.us/index.js

