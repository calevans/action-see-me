FROM asclinux/linuxforphp-8.2:7.4-zts

COPY entrypoint.sh \
     /action/

RUN chmod +x /action/entrypoint.sh

ENTRYPOINT ["/action/entrypoint.sh"]
