FROM debian:jessie
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN (apt-get update &&\
 DEBIAN_FRONTEND=noninteractive apt-get install -y ca-certificates &&\
 rm -rf /var/lib/apt/lists/*)

COPY ./bin/swarm /usr/bin/swarm

ENTRYPOINT ["/usr/bin/swarm"]
