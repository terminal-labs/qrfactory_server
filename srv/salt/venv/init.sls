install_venv:
  cmd.run:
    - name: virtualenv -p python3 /home/qrfactory_server/venv
    - runas: qrfactory_server

update_pip:
  cmd.run:
    - name: ./bin/pip install -U setuptools; ./bin/pip install -U pip
    - cwd: /home/qrfactory_server/venv/
    - runas: qrfactory_server
