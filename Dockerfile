FROM centos:latest
RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install mc supervisord  nginx python-setuptools wget unzip net-tools telnet
RUN easy_install supervisor	
RUN wget https://releases.hashicorp.com/consul/0.9.3/consul_0.9.3_linux_amd64.zip?_ga=2.268451953.1823001633.1505224498-1406019793.1505224498 -O /root/consul_0.9.3_linux_amd64.zip
RUN cd root;  unzip -x /root/consul_0.9.3_linux_amd64.zip

RUN mv /root/consul /usr/bin/consul
COPY etc/supervisord.conf /etc/supervisord.conf

RUN mkdir -p /etc/consul.d
RUN mkdir -p /opt/consul

COPY etc/consul.d/*.json /etc/consul.d/


CMD ["/usr/bin/supervisord"]