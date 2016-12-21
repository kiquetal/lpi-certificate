### Using environment variables

    Environment variables are like variables in programming languages.
    You should know that you can set them in bash by an assigment operator
    followed by the export command.
    
    When setting an environment variable you omit the dollar sign. but subsequent
    references includes the dollar sign to identify the environment variable as such.
    
    Utilizing `env` you can view the complete environment configuration.
    
    To delete an environment variable, use the `unset` command. The command takes the name
    of a environment variable(without the leading $ symbol) as an option. 
    
####  Manual section
    
| Number | Description |
| ------ | ----------- |
| 1      | Executable programs and shell commands |
| 2      | System calls provided by kernel. |
| 3      | Library calls provided by programs libraries. |
| 4      | Devices files (usually stored in /dev) |
| 5      | File formats |
| 6      | Games
| 7      | Miscellaneous |
| 8      | System administration commands |
| 9      | Kernel routines |
    
    
    The main difference betweeen man and info, is that with info you can navigate inside
    the content.
    
### Using Streams, Redirection and Pipes


    Standard Input: Programs accept keyboard input via `standard input`, abbreviated STDIN
    Standard input's file descriptor is 0(zero).
    
    Standard Output: Is abbreviated with STDOUT.Is normally displayed on the screen, either
    in a full-screen text-mode session or in a GUI terminal emulator,such as xterm.
    Standard Output file descriptor is 1.
     
    Standard Error:Abbreviated STDERR, Standard error's file descriptor is 2.
    
    Redirection Operator
   
   
| Operator  |  Decription   |
| --------- | ------------- |
| >        | Create new file containing standard output. If the specified file exists, it's overwritten. No file descriptor is required. |
| >>       | Appends standard output to the existing file. |
| 2>       | Creates new file containing standard error. If the specified file exists, the fill will be overwritten.File descriptor is mandatory/  |
| 2>>      | Appends standard error to the existing file. If the specified file doesn't exists, it's created. File descriptor is mandatory. |
| &>       | Create new file containing both standard output and error output |
| <        | Send the contents of the specified file to be used as standardinput. No file decriptor is necessary. |
| <<       | Accepts text on the following lines as standard input. No file descriptor is neccesary. |
| <>       | Causes the specified file to be used for both standard inputand standard output. No file descriptor is necessary. |
    
    
