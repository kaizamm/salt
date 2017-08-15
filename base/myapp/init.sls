conf:
  file.managed:
    - name: /tmp/myconf.txt
    - source: salt://myapp/files/myconf.txt
    - user: root
    - group: root
    - mode: 644
    - template: jinja
