## Lecture: Root User, Sudo Users And Setting Up Your User Account

- **sudo:** sudo also knows as super user

### assign password for _carlos_ user
```
$ passwd carlos

```
### specific command for edit sudoers file
sudoers: a file for modify sudo priviligies for users
```
$ visudo
```
### default group for sudo privileges on distributions
- **CentOS:** wheel
- **Ubuntu:** sudoers

### change primary group for user
```
$ usermod -G wheel carlos
```

### all logged users
```
$ w
```
### delete user with configuration files (ex: user home dir)
```
$ userdel -r carlos
```
### add group
```
$ groupadd wheel
```

## Lecture: Navigating Linux & The File System
` /etc/ ` all configuration files

` /var/ ` all the files that changes all the time

## Lecture: Logs & More File Management Tools

### last 20 lines of the file
```
$ tail -n 20 cron
```
### log file in real time
```
$ tail -f secure
```
### combine two files
```
$ cat cron secure
```
### output to a new file
```
$ cat cron secure > custom.log
```
### pipe and filter a file
```
$ tail -f secure | grep fail | grep authentication
```
**authentication file:**
- Centos: secure
- Ubuntu: auth.log

### navigate through file with less
$ less file.sh
