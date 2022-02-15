disk_cleanup:
  cmd.run:
    - name: |
        docker system prune --all --force
        apt-get autoremove -y
        sed  's/#SystemMaxUse=/SystemMaxUse=100M/' /etc/systemd/journald.conf
     
