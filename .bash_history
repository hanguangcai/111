 yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
sed -i 's+download.docker.com+mirrors.aliyun.com/docker-ce+' /etc/yum.repos.d/docker-ce.repo
 sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
docker -v
ls
ls /etc/yum.repos.d/
systemctl stop firewalld.service 
systemctl disable firewalld.service 
iptables -F
iptables -save
iptables-save
history 
vim /etc/sysctl.d/docker-net.conf
sysctl -p /etc/sysctl.d/docker-net.conf
modprobe overlay 
modprobe br_netfilter 
sysctl -p /etc/sysctl.d/docker-net.conf
vim /etc/modules-load.d/docker.conf
sysctl -p /etc/sysctl.d/docker-net.conf
systemctl restart docker
systemctl enable docker
systemctl status docker
docker run --rm busybox:latest ping www.baidu.com
docker pull hello-world
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://yzc0dl94.mirror.aliyuncs.com"]
}
EOF

sudo systemctl daemon-reload
sudo systemctl restart docker
docker info
docker pull rockylinux:9
docker images
systemctl disable firewalld
systemctl stop firewalld
iptables -F
vim /etc/hosts
scp /etc/hosts server2:/etc/
scp /etc/hosts server3:/etc/
sysctl -p
sysctl --system
vim /etc/fstab
free -m
swapoff -a
free -m
containerd config default | sudo tee /etc/containerd/config.toml
vim /etc/containerd/config.toml
cat /etc/docker/daemon.json 
vim /etc/containerd/config.toml
scp /etc/containerd/config.toml server2:/etc/containerd/config.toml
scp /etc/containerd/config.toml server3:/etc/containerd/config.toml
systemctl daemon-reload
systemctl restart containerd.service 
systemctl status containerd.service 
systemctl enable containerd.service 
cat <<EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://mirrors.aliyun.com/kubernetes/yum/repos/kubernetes-el7-x86_64/
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://mirrors.aliyun.com/kubernetes/yum/doc/yum-key.gpg https://mirrors.aliyun.com/kubernetes/yum/doc/rpm-package-key.gpg
EOF

dnf install kubelet-1.27.1-0.x86_64 kubeadm-1.27.1-0.x86_64 kubectl-1.27.1-0.x86_64 -y
systemctl enable kubelet && systemctl start kubelet
vim .bashrc
source .bashrc
crictl config runtime-endpoint unix:///run/containerd/containerd.sock
vim /etc/crictl.yaml
crictl pull busybox
crictl images
crictl pull busybox
crictl images
