install_supervisor:
  pkg.installed:
    - pkgs:
      - supervisor

copy_supervisord_config_file:
  file.managed:
    - template: jinja
    - name: /etc/supervisor/conf.d/tl_website.conf
    - source: salt://supervisord/tl_website.conf.template
