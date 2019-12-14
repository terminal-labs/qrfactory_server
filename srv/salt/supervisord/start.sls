start_tl_website:
  cmd.run:
    - name: "supervisorctl reread; supervisorctl update"
    - require:
      - sls: supervisord
