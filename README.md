# hello superset on docker

## build

```
$ docker image build -t hello-superset .
```

## run

```
$ docker run -p 80:80 hello-superset
```

## default config

username: adminuser  
password: admin

## references
- [Installation & Configuration — Apache Superset documentation](https://superset.incubator.apache.org/installation.html)
- [library/python - Docker Hub](https://hub.docker.com/_/python/)
