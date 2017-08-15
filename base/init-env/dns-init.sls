/etc/resolv.conf:
  file.managed:
    - source: salt://init-env/files/resolv.conf
    - user: root
    - group: root
    - mode: 644
