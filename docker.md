# clear (prune) on startup by crone added via userdata

```bash
    (crontab -l 2>/dev/null; echo "@reboot docker system prune -a -f --filter until=1h") | crontab -
```
