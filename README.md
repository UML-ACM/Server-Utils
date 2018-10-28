# ACM Server-Utils

Set of utils to automate container creation for user to ensure everyone
is in an isolated environment.

To run:

```bash
docker build -t umlc .
cp enter-container /usr/local/bin/enter-container
cp sudoers.diff /home/dave
cp acmuser /usr/bin
```

When you want to add a user, run (as a privileged user):
```bash
acmuser create $USERNAME
```
From there, follow the rest of the steps in the script, and the user will be
able to ssh to their container with `ssh $USERNAME@umlacm.org`


