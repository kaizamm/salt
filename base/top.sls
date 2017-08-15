base:
  '*':
    - init-env
prod:
  'I607-BKENDSYS-*':
    - qcredit.qcredit-bkend
  'I606-EXTNALNG-1':
    - qcredit.nginx-keepalived.idc.keepalived-conf-172-30-30-39
  'I606-EXTNALNG-2':
    - qcredit.nginx-keepalived.idc.keepalived-conf-172-30-30-69
  'I606-EXTNALNG-[12]':
    - qcredit.nginx-keepalived.idc.nginx-conf-172-30-30-39-69-77
  'Qf-nginx-0[12]':
    - qcredit.nginx-keepalived.sh.nginx-conf-172-16-1-69-128-129      
  'WH-Nginx-0[12]':
    - qcredit/nginx-keepalived/wh/nginx-conf-172-29-250-72-73-76 
  'WH-Nginx-01':
    - qcredit/nginx-keepalived/wh/keepalived-conf-172-29-250-72  
  'WH-Nginx-02':
    - qcredit/nginx-keepalived/wh/keepalived-conf-172-29-250-73  
