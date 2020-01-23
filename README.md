# vcapra1's RingZer0 CTF Writeups

The writeups are organized by category, as on the website, then by number.  Each writeup is a single PDF file, encrypted with the SHA256 sum of the MD5 sum of the flag as the password.

For example, if the flag is `FLAG-SUPERSECRETFLAG`, then the password can be found by

```Bash
echo -n "FLAG-SUPERSECRETFLAG" | md5sum | cut -b-32 -z | sha256sum | cut -b-64 -z
```

(Note the `-n` for the `echo` command, this is to prevent a newline at the end.  If the newline is printed it will change the value of the hash.  The same for `cut`, except the flag is `-z`)

This would output `78d178916fbd806043a43e04081fcc12`, so to unzip the file, use that as the password.

Alternatively, use the `open.sh` script provided.  Specify the challenge number and flag (in plaintext) and if it is correct, it will be extracted for you.
