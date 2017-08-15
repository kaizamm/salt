/etc/selinux/config:
  file.managed:
    - source: salt://init-env/files/selinux-config
    - user: root
    - group: root
    - mode: 644
  cmd.run:
    - name: mode=`getenforce` && [ $mode = "Enforcing" ] && setenforce 0 || echo "selinux disabled"
/etc/sysctl.conf:
  file.managed:
    - source: salt://init-env/files/sysctl.conf
    - user: root
    - group: root
    - mode: 644
  cmd.run:
    - name: sysctl -p

/etc/security/limits.d/20-nproc.conf:
  file.managed:
    - source: salt://init-env/files/20-nproc.conf
    - user: root
    - group: root
    - mode: 644

/etc/rc.d/rc.local:
  file.managed:
    - user: root
    - group: root
    - mode: 644

ntpdate:
  pkg.installed:
    - name: ntpdate
  cmd.run:
   - name: system=`cat /etc/redhat-release  | awk '{print $(NF-1)}' | awk -F'.' '{print $1}'` && [ $system -eq 7 ] &&  timedatectl set-timezone Asia/Shanghai || [ $system -eq 6 ] && rm -f /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

