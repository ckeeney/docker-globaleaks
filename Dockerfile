FROM ubuntu:16.04
RUN apt update
RUN apt install -y curl tzdata vim net-tools libterm-readline-gnu-perl software-properties-common
COPY ./install.sh /tmp/install-globaleaks.sh
#ADD https://deb.globaleaks.org/install-globaleaks.sh /tmp/
RUN chmod +x /tmp/install-globaleaks.sh
RUN /tmp/install-globaleaks.sh --assume-yes
RUN sed -i -n -e '/^APPARMOR_SANDBOXING=/!p' -e '$aAPPARMOR_SANDBOXING=0' /etc/default/globaleaks
RUN sed -i -n -e '/^NETWORK_SANDBOXING=/!p' -e '$aNETWORK_SANDBOXING=0' /etc/default/globaleaks
COPY ./docker-entrypoint.sh /opt/docker-entrypoint.sh
RUN chmod +x /opt/docker-entrypoint.sh
ENTRYPOINT /opt/docker-entrypoint.sh
