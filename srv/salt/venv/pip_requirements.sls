install_pip_requirements:
  cmd.run:
    - require:
      - sls: git
      - sls: venv
    - name: ./bin/pip install -r /home/qrfactory_server/qrfactory_flask_app/requirements.txt
    - cwd: /home/qrfactory_server/venv/
    - runas: qrfactory_server
