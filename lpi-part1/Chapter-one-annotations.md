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
     
### File formatting Commands

#### Reformatting paragrahps with `fmt`

    Is used to clean the content of the file. By default the max line is setted by 75 characters.
    
#### Numbering lines with NL

     You can numered all no emtpy line with cat -b, but if you need more complex task you should use nl
     `Body numbering style` -b `style`
     `Header and Footer` you can set the style for these element with the -h style or --header
     `Page Separator` Some numbering schemes reset the line numbers for each page. Tell the nl how identify a new page.
     `Line-Number options for new Pages` Line numering begins with new page.
     `Number Format` Specify the number format with the -n format (ln,rn,rz)
     
     Styles
 | Style | Description |
 | ----- | ----------- |
 | t     | Number lines that aren't empty |
 | a     | Cause all line to be numered |
 | n     | Cause all lines to be ommited |
 | pREGEPX | Only lines that matches the regular expression |

#### Preparing a file for printing with `pr`

    Is designed to prepare a file with header, footer, page breaks and so on.
    
    Assume an 80 character long per line.
    
    By default pr creates output that includes the original text with headers,which lists the current date and time,the original name and the page number.
    
    `Generate multicolumn output` -numcols num
    `Generate Double-Spaced Output` -d
    `Use Form Feeds` pass the -F ,-f
    `Set the Header Text` the -h text
    `Set left margin and page width` The -o chars
    
### File-Viewing commands

#### Viewing the starts of Files with `head`

     By default it displays the first 10 lines
     
     `Specify the Number of Bytes` -c num
     `Specify the number of Lines` -n num
     
#### Viewing the Ends of Files with `tail`

     Display the last 10 lines
     
     `Track a file` with the -f or --follow
     `Stop tracking on Program Termination` the --pid= pid
     
#### Paging through Files with `less`

    The `less` command is a joke, it's a reference to the `more` command,which was an early file pager.
    
    The idea behind `less` is to enable you to read a file a screen at a time.
    
    You can go the rest of pages using:
    
    * Pressing the spacebar moves forward throuhg the file a screen a time
    * Pressing ESC followed by V moves backward through the file a screen a time
    * The UP and DOWN arrow keys move up or down through the file a line at a time.
    * You can search the file's contents by pressing the slash (/) followed by the search term.
    * You can search backward in the file by using the question mark (?) key rather than the slash key
    * You can move to a specific line by typing `g` followed by the line number, as in g50 to go to line 50.
    * When you're done type q to exit from the program.
    
    Unlike most of programs described before, `less` can't b eused via pipe operation.
    
### File-Summaring commands

#### Extracting Text with `cut`

    The `cut` command extracts portions of input lines and display them on standard input.
    `By Byte` -b list
    `By character` -c list
    `By field` -f list
    
#### Obtaining a Word Count with `wc`

    The `wc` command produces a word count
    You can limit the output to the newline, the word count, the byte count, or a character count -l,-w,-c,-m
    
    The results are info about 
    lines, words, and bytes
    

### Using Regular Expressions

    Programs like `sed` and `grep` are example of programs using regeular expressions.
    
#### Grep

    grep [options] regexp [source]
    
#### Sed

    Directly modifies a file's content, sending the changed file to standard output. It syntax is
    sed [options] -f `script-file` [input-file]
    sed [options] script-text [input-file]
    
| Command               | Addresses | Meaning                                                             |
| -------               | --------- | -------                                                             |
| =                     | 0 or 1    | Display the current line number                                     |
| a\text                | 0 or 1    | Append `text` to the file                                           |
| i\text                | 0 or 1    | Insert `text` into the file                                         |
| r filename            | 0 or 1    | Append `text` from `filename` into the file                         |
| c\text                | Range     | Replace the selected range of lines with the provided `txt`         |
| s/regexp/replacemente | Range     | Replace text that matches the regular expression with `replacement` |
| w filename            | Range     | Write the current pattern space to the specified file               |
| q                     | O or 1    | Inmediately quit the script, but print the current pattern space.   |
| Q                     | 0 or 1    | Inmediately quit the script.                                        |
    

