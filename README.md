This is archived and READ-ONLY. Go to https://gitlab.com/bernhard.bermeitinger/fedora-docker-latex for the newest version.


# docker-latex
Docker-Latex image for building without the hassle of installing TeXLive.

The base image is `fedora:32`. It is tested with TeXLive 2016, 2017, 2018, 2019, and 2020. Older releases might lack dependencies that are not installed in the base.

## Building the image for 2020

- Download the respective TeXLive from the rsync mirror:
- Build the data-container
- Build the container

```bash
$ export TEXLIVE=2020
$ rsync -a --progress -h --delete -z rsync://rsync.dante.ctan.org/CTAN/systems/texlive/tlnet/ texlive-data/$TEXLIVE
$ ./texlive-data.sh $TEXLIVE
$ ./texlive.sh $TEXLIVE
```

You could now delete the `texlive:2020` container and the rsynced folder (`texlive-data/2020`). (Or keep it if you plan to install dependencies or update the base image.) Updating the base image is the reason for this overhead.

## Historic images
The main process is the same but the rsync-mirror is different:
Choose from `TEXLIVE=2016`, `TEXLIVE=2017`, `TEXLIVE=2018`, `TEXLIVE=2019`
```bash
$ export TEXLIVE=2019
$ rsync -a --progress -h --delete -z rsync://texlive.info/historic/systems/texlive/$TEXLIVE/tlnet-final/ texlive-data/$TEXLIVE
$ ./texlive-data.sh $TEXLIVE
$ ./texlive.sh $TEXLIVE
```
