apt update
      apt install wget -y
      wget -O - https://download.gluster.org/pub/gluster/glusterfs/7/rsa.pub | apt-key add -
      DEBID=$(grep 'VERSION_ID=' /etc/os-release | cut -d '=' -f 2 | tr -d '"')
      DEBVER=$(grep 'VERSION=' /etc/os-release | grep -Eo '[a-z]+')
      DEBARCH=$(dpkg --print-architecture)
    echo deb https://download.gluster.org/pub/gluster/glusterfs/LATEST/Debian/${DEBID}/${DEBARCH}/apt ${DEBVER} main > /etc/apt/sources.list.d/gluster.list
     apt update
  apt install glusterfs-client -y
