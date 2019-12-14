install_less:
  cmd.run:
    - name: npm install -g less

install_webpack:
  cmd.run:
    - name: npm install -g webpack

install_package.json:
  cmd.run:
    - name: npm install
    - cwd: /home/qrfactory_server/qrfactory_flask_app
    - runas: qrfactory_server
