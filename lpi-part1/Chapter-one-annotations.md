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
    
   
### Piping data between programs

    When you need to send the text ouput from one program to the standard input of another program, you can utilize the operator `|`, can be used with an arbitrary length.
    
    `tee` command ovewrite any file, if you want to append you should send `-a` flag.

### Generating command lines

    The 'xargs' command builds a command from its standard input. 
    
     xargs [options] [command [initial-arguments]]
     
     When you run xargs,it runs the `command` once for every word passed to in on standard input,adding that word to the argument list for command. If you want to pass multiple options to the command, you can protect them by enclosing the group in quotation marks.
     
     Another command similar to `xargs` is the backtick (`)
     Use of backtick is falling out of favor beacuse are so often confused with single quotation marks.
     In several shells you can use `$()` instead
     
     
### Processing Text using Filters

#### File combining with `cat`

     The cat command is the short name for concatenate.
     Generally is used to display the content to STDOUT, for large files you should prefer
     use `more` or `less`
     
     The reverse operation is `tac`
     
#### Joining Files with `Join`

     Combine two files by matching one specific `region`.
     By default is look for the first field,to be present in the two file, you chould specify another keyfield using -1 or -2 option to indicate the join field 
     
#### Merging lines with `paste`

     The paste command merges files line by line, separating the lines from each file with tabs
     
### File transforming commands

     The command don't actually change file's content but instead send the changed file's content
     to STDOUT. You can the pipe this output to another commnad or redirect it into a new file.
     
#### Converting Tabs to Spaces with `expand`

    By default, expand asumes tab stop every 8 characters, you can customize this via -t num or --tabs=num

#### Displaying file with `od` command

     It displays a file in an unambiguous format -octal(base 8) numbers by default.

#### Sorting file with `SORT`

     `IgnoreCase` sort sorts by ASCII value. The -f or --ignore-case option causes sort to ignore case.
     `Month Sort` the -M or --month-sort cause program to sort by three-letter month abbreviation
     `Numeric Sort`` You can sort by number by using the -n or --numeric sort
     `Reverse Sort Order` you can sort by number by using the -n or --numeric-sort
     `Sort Field` By default sort uses the first field as its sort field. You can specify another field with -k field or --key=field option
     
#### Breakinga file into pieces with `split`

     The `split` command can split a file into two or more files. Is mandatory that you specify the output file.You must also specify how large you want the individual files to be
     
     
     `Split by Bytes` the -b size or --byte=size
     `Split Bytes in Line-Sized chunks` -C=size or --line-bytes=size.
     `Split by number of lines` The -l lines or --lines=lines
     
#### Translating characters with TR

     The tr command changes individual characters from standard input.
     
     The tr command relies on standard input, which is the reason for the input redirection (<). This is the only way to pass the command line.
     
     If [SET2] is shorter than [SET1] the result is that tr sustituite the last available letter from SET2 for the missing letters.
     
     The -t or --truncate-set1 option causes tr to truncate SET1 to the size of SET2

      tr [OPTIONS] SET1 [SET2]
    
#### Converting spaces to tabs with UNEXPAND

     The unexpand, is the logical opposite of `expand`, convert
     multiple spaces to tabs.
     
#### Deleting duplicate lines with UNIQ

     Remove duplicate lines.
     
     Normalize is used with the sort via pipe operator.
     
