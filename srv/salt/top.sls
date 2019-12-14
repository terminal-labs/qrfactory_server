base:
  'roles:qrfactory_server':
    - match: grain
    - basebox
    - basebox.symlink
    - users
    - git
    - node
    - webpack
    - venv
    - venv.pip_requirements
    - nginx
    - supervisord
    - supervisord.start
