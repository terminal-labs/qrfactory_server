download_node_7_installer_file:
  cmd.run:
    - name: wget https://deb.nodesource.com/setup_7.x -O setup_7.x

run_node_7_installer_file:
  cmd.run:
    - name: sudo bash setup_7.x

update_apt:
  cmd.run:
    - name: apt update

install_node:
  cmd.run:
    - name: apt install nodejs

remove_node_7_installer_file:
  cmd.run:
    - name: rm setup_7.x
