# nfs-server-and-dynamic-provisioning-nfs
## This project a sample guide for nfs server and kubernetes dynamic provisioning nfs
## Go to Server machine run `nfs-server.sh` to Create `Network File System (NFS) Server` don't forget change `NFS-Client-IP-Address-without-double-quotes` by real internal IP Address and go to Client machine run `nfs-client.sh` to Connect with `Network File System (NFS) Server` inside Client run `df -h` to check new mounted server has done.

## Now go to kubernetes side create a `persistentvolume.yml` to create Persistent Volume don't forget change `intrenal-ip` by real internal IP Address of Server machine and don't forget change `intrenal-path-of-shareing-by-nfs-server-in-double-quotes` by path of nfs in this tutorial use `"/mnt/nfs_share"` with double quotes.

## create a `persistentvolumeclaim.yml` to create Persistent Volume Claim

## latest follow example how to use it with deployment

```yaml
    spec:
      volumes:
        - name: locigal-name-standard-this-file-with-volumeMounts
          persistentVolumeClaim:
            claimName: persistent-volume-claim-name
      containers:
        - name: ........
          image: ........
          ports:
            - containerPort: 80
              protocol: TCP
          volumeMounts:
            - name: locigal-name-standard-this-file-with-volume
              mountPath: internal-path-of-data-into-container

```

