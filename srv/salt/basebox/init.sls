update_box:
  cmd.run:
    - name: apt update --yes -q; DEBIAN_FRONTEND=noninteractive apt -y -q -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" full-upgrade

setup_basebox:
  pkg.installed:
    - pkgs:
      - libreadline6-dev
      - libbz2-dev
      - libssl-dev
      - libsqlite3-dev
      - libncursesw5-dev
      - libffi-dev
      - libdb-dev
      - libexpat1-dev
      - zlib1g-dev
      - liblzma-dev
      - libgdbm-dev
      - libffi-dev
      - libmpdec-dev
      - libjpeg62-turbo-dev
      - libfreetype6-dev 
      - libpq-dev
      - python-dev
      - python3-dev
      - build-essential 
      - python-virtualenv
      - git
      - mercurial
      - emacs
