tomcat:
  service.running:
    - enable: True
    - watch: 
      - file: /home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/applicationContext-client.xml
      - file: /home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/applicationContext.xml
      - file: /home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/applicationContext-jms.xml
      - file: /home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/applicationContext-scheduler.xml
      - file: /home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/applicationContext-service.xml
      - file: /home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/application.properties
      - file: /home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/biz.properties
      - file: /home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/cacheConfig.properties
      - file: /home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/log4jdbc.properties
      - file: /home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/logback.xml
      - file: /home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/pboc.properties
      - file: /home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/redis_config.properties
      - file: /home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/service.properties
      - file: /home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/trackerContext.xml
      - file: /home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/track-alert-param.properties
/home/bkendadmin/tomcat7-bkend:
  file.directory:
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
    - makedirs: False
    - recurse:
      - user
      - group
      - mode 
/home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/applicationContext-client.xml:
  file.managed:
    - source: salt://qcredit/qcredit-bkend/files/conf/applicationContext-client.xml
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
/home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/applicationContext.xml:
  file.managed:
    - source: salt://qcredit/qcredit-bkend/files/conf/applicationContext.xml
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
/home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/applicationContext-jms.xml:
 file.managed:
    - source: salt://qcredit/qcredit-bkend/files/conf/applicationContext-jms.xml
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
/home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/applicationContext-scheduler.xml:
 file.managed:
    - source: salt://qcredit/qcredit-bkend/files/conf/applicationContext-scheduler.xml
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
/home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/applicationContext-service.xml:
 file.managed:
    - source: salt://qcredit/qcredit-bkend/files/conf/applicationContext-service.xml
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
/home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/application.properties:
 file.managed:
    - source: salt://qcredit/qcredit-bkend/files/conf/application.properties
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
/home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/biz.properties:
 file.managed:
    - source: salt://qcredit/qcredit-bkend/files/conf/biz.properties
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
/home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/cacheConfig.properties:
 file.managed:
    - source: salt://qcredit/qcredit-bkend/files/conf/cacheConfig.properties
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
/home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/log4jdbc.properties:
 file.managed:
    - source: salt://qcredit/qcredit-bkend/files/conf/log4jdbc.properties
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
/home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/logback.xml:
 file.managed:
    - source: salt://qcredit/qcredit-bkend/files/conf/logback.xml
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
/home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/pboc.properties:
 file.managed:
    - source: salt://qcredit/qcredit-bkend/files/conf/pboc.properties
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
/home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/redis_config.properties:
 file.managed:
    - source: salt://qcredit/qcredit-bkend/files/conf/redis_config.properties
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
/home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/service.properties:
 file.managed:
    - source: salt://qcredit/qcredit-bkend/files/conf/service.properties
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
/home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/trackerContext.xml:
 file.managed:
    - source: salt://qcredit/qcredit-bkend/files/conf/trackerContext.xml
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
/home/bkendadmin/tomcat7-bkend/webapps/qcredit-bkend/WEB-INF/classes/track-alert-param.properties:
 file.managed:
    - source: salt://qcredit/qcredit-bkend/files/conf/track-alert-param.properties
    - user: bkendadmin
    - group: bkendadmin
    - mode: 755
