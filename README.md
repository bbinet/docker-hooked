docker-hooked
=============

[Hooked](https://github.com/bbinet/hooked) (run command on GitHub and BitBucket
POST request hooks) docker container.


Build
-----

To create the image `bbinet/hooked`, execute the following command in the
`docker-hooked` folder:

    docker build -t bbinet/hooked .

You can now push the new image to the public registry:
    
    docker push bbinet/hooked


Run
---

Then, when starting your hooked container, you will want to bind ports `80`
from the hooked container to a host external port.
The hooked container will read its configuration from the `/config/hooked.cfg`
file, so make sure this file is available to docker as a volume.

For example:

    $ docker pull bbinet/hooked

    $ docker run --name hooked \
        -v /home/hooked/config:/config \
        -p 80:80 \
        bbinet/hooked
