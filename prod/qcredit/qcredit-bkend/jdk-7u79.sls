jdk-install:
  file.managed:
    - name: /usr/local/src/jdk-7u79-linux-x64.tar.gz
    - source: salt://files/soft/jdk-7u79-linux-x64.tar.gz
    - user: root
    - group: root
    - mode: 755
    - template: jinja
  cmd.run:
    - name: cd /usr/local/src/ && tar -C /usr/local -zxvf jdk-7u79-linux-x64.tar.gz 
    - unless: test -d /usr/local/jdk1.7.0_79 
    - require: 
      - file: jdk-install
/usr/local/jdk1.7.0_79:
  file.directory:
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
    - makedirs: False
    - recurse:
      - user
      - group
      - mode
/etc/profile.d/java.sh:
  file.managed:
    - source: salt://files/java.sh
    - user: root
    - group: root
    - mode: 755
  cmd.run:
    - name: source /etc/profile.d/java.sh
    - require: 
      - file: /etc/profile.d/java.sh

