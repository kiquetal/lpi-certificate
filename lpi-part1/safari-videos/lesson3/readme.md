## Copying,moving and removing files
### Commands
`mkdir`
  Create single directory

`rm` -rv 

`mkdir -p fold1/fold2`

`rmdir` only if directory is empty,raise error

 Using globs

ls -d [abc]?t*   //2letter ignore,3 has to be t
 
 `dd`

Copy files dd if=/dev/sd1 of=/sda1.img

### Difference between hardlink and symbolic links

The symbolinks links works with the filename
The hardlink works on inode
You can use symbolic links between files in different drives
