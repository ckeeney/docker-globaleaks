This is a docker implementation of [Globaleaks](https://www.globaleaks.org/).

Here is a minimal `docker-compose.yml` needed to run this image:

```yaml
version: "3"
services:
  globaleaks:
    image: ckeeney/docker-globaleaks
    cap_add:
      - NET_ADMIN
    ports:
      - 80:80
      - 443:443
``` 

Here is a oneliner for `docker`:  Actually, I use `docker-compose` and am not going to bother looking this up.  Submit a pull request.

Also, you should mount some volumes in some places so you don't lose all your data.  It's a work in progress.
