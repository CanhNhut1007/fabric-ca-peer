FROM hyperledger/fabric-ca:latest

LABEL  maintainer="Thach Canh Nhut"

RUN rm -r /etc/hyperledger/fabric-ca-server

ENV FABRIC_CA_HOME=/etc/hyperledger/ThuDuc-fabric-ca

RUN mkdir /etc/hyperledger/ThuDuc-fabric-ca

COPY fabric-ca-server-config.yaml /etc/hyperledger/fabric-ca-server

COPY fabric-ca-client-config.yaml /etc/hyperledger/fabric-ca-server

EXPOSE 7054

CMD ["/bin/sh" "-c" "fabric-ca-server start -b admin:adminpw"]
