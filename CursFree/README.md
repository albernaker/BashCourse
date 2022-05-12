# Learn Bash fast!
### Basic Bash Commands
##### Navigating the file systems
-------------------------
###### cd 
 The cd command is used to change the current working directory in Linux and other Unix operating systems. 

    cd << And the next folder >> like  "cd /numbers/1/"
If you want to go back 
   
    cd .. -> hola1/hola2  cd .. -> hola1 
    
###### ls
The ls command takes the location of a directory and prints all the files and directories within the location. It can also print additional file information like file permissions, file ownership, file size, etc.
    
    ls and you will see your directories in your current working directory
    
###### pwd
The pwd Linux command prints the current working directory path, starting from the root ( / ).
    
    pwd and you will see the current directory path.
    
##### Working with files and directories
-------------------------
###### mkdir
The mkdir "make directory" Linux command creates a folder on the current location. 
    
    mkdir << name of the folder>> like mkdir folder1
    
###### touch
The touch command is the easiest way to create new, empty files.
    
     touch << name of the file>> like touch file1
    
###### rm
The rm command is the easiest way to delete a folder or file.

    rm << name of the file/folder>> like rm file1
    
!! IF FOLDER IS NOT EMPTY YOU CAN'T DELETE THE FOLDER SO YOU HAVE TO WRITE -R TO DELETE THE FOLDER AND ALL THE FILES INSIDE LIKE rm -r namefolder


###### cat
The cat command is the easiest way to read a content of a file

    cat << name of the file/folder>>

##### Move and copy files or folders
-------------------------
###### mv
The mv command is a command line utility that moves files or directories from one place to another 

    mv <nameoffile/folder> <route to move>  -> mv hello.txt /english
    
###### cp
The cp command is a command line utility that copy files or directories from one place to another 
    It works like mv!
    
    cp <nameoffile/folder> <route to move>  -> cp hello.txt /english
    
  
### Basic Bash Scripts


###### Create a script
1) Create a new text file with a .sh extension.
I created a new file called deploy.sh.

2) Add #!/bin/bash to the top of it.
This is necessary for the “make it executable” part.
3) Add lines to the script
4) At the command line, run chmod u+x YourScriptFileName.sh
5) Run it whenever you need!

Now, I run ./deploy.sh and boom. Done.

##### Variables and command substitution
---------------------

###### How to create a variable
A variable in bash can contain a number, a character, a string of characters. You have no need to declare a variable, just assigning a value to its reference will create it.
    
    var1=1
Remember that you can't use spaces!

    var1 = 1  x
    var1=1  ✓
    
Always quote your variables, if you're comparing strings if there is a space it should make an error but if you quote your variables you will compare the string with the spaces

    if[$X = $Y]---> wrong
    if["$X" = "$Y"]---> better!
    
    
###### Print Variable and use it
Okay, you declared before a variable with a number, string or something, now you use it to do something or print the value to the console.

        print <$Variable name> 
        
###### Create your first script
Okay, you created a file with vim, touch, nano... with extension .sh.
    Open it and lets write a first code to understand it.
    
    #!/bin/bash
        #We need to declare numbers if we want to use variables
        a=0
        b=2
        
        #We create a variable that we will give it the result  
        result=$(( $a + $b + 0 ))
        
        #Now we print the result.
        echo "Result is $result" 
        
We can do the same exercice but using parameters
    It means that we can write numbers and it will make a sum with that num.

        #!/bin/bash
        #We need to declare numbers if we want to use variables
        a=$1
        b=$2
        
        #We create a variable that we will give it the result  
        result=$(( $a + $b + 0 ))
        
        #Now we print the result.
        echo "Result is $result" 

$1 $2 ... These are positional arguments of the script.
Executing

    ./script.sh Hello World

This will make

    $0 = ./script.sh
    $1 = Hello
    $2 = World
    
### Conditional, Loops, Cases
    
##### Conditionals
------------------------------------------------------
If statements (and, closely related, case statements) allow us to make decisions in our Bash scripts. 

    if [ <some test> ]
    then
    <commands>
    fi
    
If you want to know operands go to the following link, it has a lot of operands that you will use usually.
- https://kapeli.com/cheat_sheets/Bash_Test_Operators.docset/Contents/Resources/Documents/index

##### Loop or for
The for loop iterates over a list of items and performs the given set of commands.

The Bash for loop takes the following form:

    for item in [LIST]
    do
      [COMMANDS]
    done

##### Case
The Bash implementation of case tries to match an expression with one of the clauses.

he generic form of the case statement is this:

        case expression in 
              pattern-1)
                statement 
                ;;
              pattern-2) 
                statement
                ;;
              pattern-N) 
                statement 
                ;;
              *) 
                statement 
                ;; 
            esac
            
A example :

        
        #!/bin/bash
            echo "Enter name of a month"
            read month
            case $month in
              February)
                echo "28/29 days in $month"
                ;;
                
              April | June | September | November)
                echo "30 days in $month"
                ;;
                
              January | March | May | July | August | October | December)
                echo "31 days in $month"
                ;;
                
              *)
                echo "Unknown month: $month"
                ;;
            esac








    

    
