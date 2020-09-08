ARG TEXLIVE

# Image that holds repository
FROM texlive:${TEXLIVE} AS repo

# Image which installs TeXLive
FROM fedora AS install
RUN dnf install -y \
        perl \
        wget

COPY --from=repo /TEXLIVE /TEXLIVE

COPY install.profile /install-tl/install.profile

RUN tar xfa /TEXLIVE/install-tl-unx.tar.gz -C /install-tl --strip-components=1 && \
    /install-tl/install-tl \
		--profile /install-tl/install.profile \
		--repository /TEXLIVE

# Final image without intermediate files
FROM fedora AS final

LABEL maintainer="Bernhard Bermeitinger <bernhard.bermeitinger@gmail.com>"

RUN dnf install -y \
        perl \
        libnsl \
        fontconfig \
        ghostscript \
        libxcrypt-compat \
        gnuplot \
    && \
    dnf clean all && \
    rm -rf /var/cache/dnf && \
    useradd \
	    --create-home \
	    --home-dir /home/tex \
	    --shell /bin/bash \
	    tex


COPY --from=install /usr/local/texlive /usr/local/texlive
ENV PATH="/usr/local/texlive/bin/x86_64-linux:${PATH}"
WORKDIR /home/tex/data

ARG BUILD_DATE

# ... upgrade packages if necessary
RUN dnf upgrade --refresh --assumeyes && \
    dnf clean all && \
    rm -r /var/cache/dnf

USER tex
RUN luaotfload-tool --update
