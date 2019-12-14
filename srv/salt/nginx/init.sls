install_nginx: 
  pkg.installed:
    - name: nginx-full
  service.running:
    - name: nginx
    - enable: True

/home/qrfactory_server/nginx.conf:
  file.managed:
    - template: jinja
    - source: salt://nginx/nginx.conf.template
    - user: qrfactory_server
    - group: qrfactory_server
 
/home/qrfactory_server/uwsgi_params.txt:
  file.managed:
    - source: salt://nginx/uwsgi_params.txt
    - user: qrfactory_server
    - group: qrfactory_server

/etc/nginx/sites-enabled/nginx.conf:
  file.symlink:
    - target: /home/qrfactory_server/nginx.conf

/etc/nginx/sites-enabled/default:
  file.absent

restart_nginx:
  module.run:
    - name: service.restart
    - m_name: nginx
