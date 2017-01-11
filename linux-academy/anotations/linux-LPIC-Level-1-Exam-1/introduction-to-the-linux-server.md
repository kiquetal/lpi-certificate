## Basic Stuff

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
