sudo apt install nfs-kernel-server -Y

sudo mkdir -p /mnt/nfs_share

sudo chown -R nobody:nogroup /mnt/nfs_share/

sudo chmod 777 /mnt/nfs_share/

echo "/mnt/nfs_share "NFS-Client-IP-Address-without-double-quotes"(rw,sync,no_subtree_check,no_root_squash,no_all_squash,insecure)" >> /etc/exports

sudo exportfs -a

sudo ufw allow from "NFS-Client-IP-Address-without-double-quotes" to any port nfs

sudo ufw enable sudo ufw status

sudo systemctl restart nfs-kernel-server


