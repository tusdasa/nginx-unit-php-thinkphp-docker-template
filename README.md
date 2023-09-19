# thinkphp nginx unit docker镜像模板
---
1. 请使用自己的thinkphp应用替换thinkphp目录，目录结构如下

```
├── bundle.pem
├── Dockerfile
├── php.json
└── thinkphp
    ├── app
    ├── composer.json
    ├── composer.lock
    ├── config
     ....
```
2. 请使用自己证书替换bundle.pem内的内容

```

-----BEGIN CERTIFICATE-----
nginx 证书.pem文件内容
-----END CERTIFICATE-----
-----BEGIN RSA PRIVATE KEY-----
nginx 证书.key文件内容
-----END RSA PRIVATE KEY-----


``` 

3. 更多配置请参考Dockerfile和php.json，参考https://unit.nginx.org/installation/#docker-images