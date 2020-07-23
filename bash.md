
# Example of redirection
```bash
{ /bin/ls /tmp /AAA /ZZZ 2>&1 1>&3 3>&- | { grep -v ZZZ  1>&2 ; } ; }
```


# tar remote files
```bash
ssh username@old 'tar czf - /home/username' | tar xvzf - -C /home/username
```

# delete files, non present in source
```bash
$ rsync -v -r --delete --existing --ignore-existing  /Users/disfinder/Photo/\!sony_manual_fuck_that_play_memories_crap/ /Volumes/SONY_CAM_32/DCIM/100MSDCF/
```
