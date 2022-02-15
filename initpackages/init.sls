update_pkg:
  pkg.uptodate:
    - refresh : True

install_pkg:
  pkg.installed:
    - pkgs:
      - docker.io
      - python3
      - vim
      - git


docker_config:
  file.managed:
    -name: /etc/docker/daemon.json
     source: salt://initpackages/files/daemon.json
     user: root
     group: root
     mode: 644
