FROM asclinux/linuxforphp-8.1:7.2-zts

COPY entrypoint.sh \
     /action/

RUN chmod +x /action/entrypoint.sh

ENTRYPOINT ["/action/entrypoint.sh"]
