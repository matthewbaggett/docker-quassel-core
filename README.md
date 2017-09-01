# docker-quasselcore

A lightweight (~60MiB) standalone Quassel core server based on Alpine Linux. Only available with SQLite backend.

## Running

The only state you want to keep between two consecutive runs is `/etc/quasselcore/quassel-storage.sqlite` and `/etc/quasselcore/quasselCert.pem`.

An example of run options:

	docker run -d --restart=unless-stopped --name quasselcore --user 1001 -p 4242:4242 -v /srv/quasselcore/:/etc/quasselcore/ mtthbfft/quasselcore
    
## Contribute

Pull requests welcome. Help by telling me if you find bugs or have ideas on how to improve this.
