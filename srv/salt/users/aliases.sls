add_alias_emacsclient:
  cmd.run:
    - name: echo "alias emacs='emacsclient -a \"\" -t'" >> .bash_aliases
    - cwd: /home/qrfactory_server
    - runas: qrfactory_server
    - require:
      - sls: users
