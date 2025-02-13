FROM ubuntu

WORKDIR /workdir

ENV buildfile '/workspace/build.xml'

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://ftp.fau.de/eclipse/technology/epp/downloads/release/2024-12/R/eclipse-modeling-2024-12-R-linux-gtk-x86_64.tar.gz

RUN tar -xf eclipse-modeling-2024-12-R-linux-gtk-x86_64.tar.gz

CMD ["sh", "-c", "/workdir/eclipse/eclipse -noSplash -data /workspace -application org.eclipse.ant.core.antRunner -buildfile $buildfile"]