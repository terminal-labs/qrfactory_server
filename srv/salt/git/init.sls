bitbucket.org:
  ssh_known_hosts:
    - present
    - fingerprint: {{ grains['fingerprint'] }}

git@bitbucket.org:terminal_labs/qrfactory_flask_app.git:
  git.latest:
    - target: /home/qrfactory_server/qrfactory_flask_app
    - user: root

/home/qrfactory_server/qrfactory_flask_app:
  file.directory:
    - user: qrfactory_server
    - group: qrfactory_server
    - recurse:
      - user
      - group
