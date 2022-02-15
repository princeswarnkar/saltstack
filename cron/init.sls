rootkit_checks:
  cron.present:
    - name: rkhunter -c --crontab
    - user: root
    - minute: 00
    - hour: 00
    - daymonth: '*'
    - month: '*'
    - dayweek: '1'
