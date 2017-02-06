### Vim keystrokes

                                                                                            
| Key | Description                                                   |
| --- | :------------------------------------------------------------ |
| h   | Moves the cursor left one character.                          |
| j   | Moves the cursor down one line.                               |
| k   | Moves the cursor up one line.                                 |
| l   | Moves the cursor right one character.                         |
| 0   | Moves the cursor to the start of the current line             |
| dw  | Delete the word that comes immediately after the cursor.      |
| d$  | Delete from the insertion point to the endo of the line.      |
| dd  | Delete the current line                                       |
| D   | Delete the rest of the current line from the cursor position. |
| p   | Inserts the text deleted in the last deletion operation after current cursor |
| u   | Undoes the last action. |
| yy  | Copies the line in which the cursor is located to the buffer.|
| ZZ  | Saves the current file and ends vi |
| /   | Search | 


### Execution Priorities

    You can assign each process with its own nice value between 19 and -20, where 19 is very nice, and -20 just plain nasty.
    A process with a nice value of 19 is so nice,that it will yield its rights to a finite resource to just about any other 
    process asking for it.If, on the other hand, it's set to -20 a process will grab as much of the resource pie as it can,
    given itself top priority.
    
    You can use `renice` to change the nice value of process even once it's already running
     renice -10 -p 365
     
    With the -u argument, you can apply renice to all the process associated with the named user
    renice 10 -u kiquetal
    
