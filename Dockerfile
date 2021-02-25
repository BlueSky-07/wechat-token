FROM archlinux:latest

ADD assets/os-release /etc/
ADD assets/lsb-release /etc/
ADD assets/libuosdevicea.so /usr/lib/license/
ADD assets /opt/wechat-token

STOPSIGNAL SIGQUIT

CMD /opt/wechat-token/node -e "console.log(require('/opt/wechat-token/wcs.node').get_cc_data(1, '/opt/wechat-token/sae.dat').toString('ascii'))"