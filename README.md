# explorekit

My personal docker image to explore networks, containers, etc.

## Usage

### With Docker

```console
$ docker run --rm -it lambdalisue/explorekit -- tcpdump -A
```

### With Kubernetes (Sidecar)

Add a temporary container with (assume that `my-nginx` is the name of the deployment)

```console
$ kubectl edit deploy my-nginx
...
spec:
  template:
    spec:
      containers:
        - name: explorekit
          image: lambdalisue/explorekit
          command: ["sleep", "infinity"]
...
```

Then execute `tcpdump` as

```console
kubectl exec my-nginx-xxxxxxxxxx -- tcpdump -A
```

## Commands

- `curl` (`curl`)
- `dnsutils` (`dig`, `nslookup`, `nsupdate`)
- `iputils-ping` (`ping`, `ping6`)
- `jq`
- `neovim`
- `net-tools` (`arp`, `hostname`, `ifconfig`, `netstat`, `route`, etc.)
- `netcat` (`nc`)
- `nmap`
- `openssh-client` (`ssh`, `scp`, `sftp`, etc.)
- `postgresql-client` (`psql`, `pg_dump`, etc.)
- `tcpdump`

## Reference

- [Kubernetes 上のアプリケーションを tcpdump でデバッグする](https://blog.mosuke.tech/entry/2021/01/31/network-debug-on-containers/)
