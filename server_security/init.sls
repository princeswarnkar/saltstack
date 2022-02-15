install_lynis:
  cmd.script:
    - name: install_lynis.sh
    - source: salt://server_security/scripts/install_lynis.sh


ssh_security:
  file.managed:
    - source: salt://server_security/files/sshd_config
    - name: /etc/ssh/sshd_config
    - user: root
    - group: root
    - mode: 644

service_restart:
  cmd.run:
     - name: systemctl restart ssh

install_rkhunter:
  cmd.run:
    - name: |
        DEBIAN_FRONTEND=noninteractive apt-get install rkhunter -y 
