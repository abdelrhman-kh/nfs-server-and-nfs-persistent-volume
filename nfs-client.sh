
sudo apt install nfs-common -Y

sudo mkdir -p /mnt/nfs_share

sudo mount "NFS-Server-IP-Address-without-double-quotes":/mnt/nfs_share /mnt/nfs_share

df -h
