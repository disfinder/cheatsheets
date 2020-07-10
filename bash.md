
# Example of redirection
```bash
{ /bin/ls /tmp /AAA /ZZZ 2>&1 1>&3 3>&- | { grep -v ZZZ  1>&2 ; } ; }
```


# tar remote files
```bash
ssh username@old 'tar czf - /home/username' | tar xvzf - -C /home/username
```
