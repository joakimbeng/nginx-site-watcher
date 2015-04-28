nginx-site-watcher
====================

> An nginx Docker container which automatically reloads nginx when sites-enabled configs change

## Usage

```bash
docker pull joakimbeng/nginx-site-watcher
```

```bash
docker run -d -p 80:80 -v `pwd`/sites:/etc/nginx/sites-enabled joakimbeng/nginx-site-watcher
```

Built on [`nginx`](https://registry.hub.docker.com/_/nginx/).
