qrfactory_server:
  user.present:
    - home: /home/qrfactory_server
    - fullname: qrfactory_server
    - shell: /bin/bash

color_prompt:
  cmd.run:
    - name: sed -i 's/^#force_color_prompt/force_color_prompt/g' .bashrc; sed -i 's/^\s*#alias grep/    alias grep/g' .bashrc
    - cwd: /home/qrfactory_server
    - runas: qrfactory_server

