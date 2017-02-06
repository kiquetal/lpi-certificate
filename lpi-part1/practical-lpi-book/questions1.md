### Vim keystrokes

                                                                                            
| Key | Description |
| ___ | ___________ |
| a   | Descend     |

    
### Execution Priorities

    You can assign each process with its own nice value between 19 and -20, where 19 is very nice, and -20 just plain nasty.
    A process with a nice value of 19 is so nice,that it will yield its rights to a finite resource to just about any other 
    process asking for it.If, on the other hand, it's set to -20 a process will grab as much of the resource pie as it can,
    given itself top priority.
    
    You can use `renice` to change the nice value of process even once it's already running
     renice -10 -p 365
     
    With the -u argument, you can apply renice to all the process associated with the named user
    renice 10 -u kiquetal
    
