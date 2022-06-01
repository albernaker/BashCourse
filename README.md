# Bash Course

[TOC]

# 1. Introduction

Hello user! I'm here to talk about my bash course, here i will explain some scripts to learn about bash.

# 2. Bash notions

## 2.1. Variables

The variables in bash are global by default and accessible from anywhere, including function bodies. Variables defined inside a function are also global. Adding the keyword local makes the term accessible only within the function and the child functions/processes.

	var1=1
	var2=1

     change() {

        echo Inside function
        echo Variable 1 is: $var1
        echo Variable 2 is: $var2
        local var1=5
        var2=5
        echo
        echo After change inside function
        echo Variable 1 is locally $var1
        echo Variable 2 is globally $var2
      }
        echo Before function invocation
        echo Variable 1 is: $var1
        echo Variable 2 is: $var2
        echo
        change
        echo
        echo After function invocation
        echo Variable 1 is: $var1
        echo Variable 2 is: $var2

Add this to your code and see how it works!

### 2.1.1. Parameters

	$0 - Contains the name of the script as it is called.
	$1...$2... - Contains the parameters that you have writed before execute program or introducing to a funciton
	$*: The set of all parameters in a single argument.
	$@: the array of arguments, one argument per parameter.
	$#: The number of parameters passed to the script.
	$?: The return code of the last command.
	$$: The PID of the shell that runs the script.
	PS: The PID of the last process executed in the background.

```
f 1 2 3
f "1 1" "2 2" "3 3"
f() {

     local i
     echo "numparams: ${#@}"
     for i in $@ ; do
	echo "p: $i"
     done
	echo "----"
     for i in "$@" ; do
	echo "p: $i"
     done
}
```

### 2.1.2. Arithmetic variable asignment
```
A=123
B=$((A * 3 + 1))
B=$(($A * 3 + 1))
```

## 2.2. Basic Operations

### 2.2.1 File Operations
| [**cat**](#a-cat)  | [**chmod**](#b-chmod) | [**chown**](#c-chown) | [**cp**](#d-cp)   | [**diff**](#e-diff) | [**file**](#f-file) | [**find**](#g-find) | [**gunzip**](#h-gunzip) | [**gzcat**](#i-gzcat) |[ **gzip**](#j-gzip)  |
|----------|-----------|-----------|----------|----------|----------|----------|------------|-----------|-----------|
| [**head**](#k-head) | [**lpq**](#l-lpq)  | [**lpr**](#m-lpr)  | [**lprm**](#n-lprm) | [**ls**](#o-ls)   | [**more**](#p-more) | [**mv**](#q-mv)   | [**rm**](#r-rm)   | [**tail**](#s-tail)  | [**touch**](#t-touch) |


### a. `cat`
It can be used for the following purposes under UNIX or Linux.
* Display text files on screen
* Copy text files
* Combine text files
* Create new text files
```bash
cat filename
cat file1 file2
cat file1 file2 > newcombinedfile
cat < file1 > file2 #copy file1 to file2
```

### b. `chmod`
The chmod command stands for "change mode" and allows you to change the read, write, and execute permissions on your files and folders. For more information on this command check this [link](https://ss64.com/bash/chmod.html).
```bash
chmod -options filename
```

### c. `chown`
The chown command stands for "change owner", and allows you to change the owner of a given file or folder, which can be a user and a group. Basic usage is simple forward first comes the user (owner), and then the group, delimited by a colon.
```bash
chown -options user:group filename
```

### d. `cp`
Copies a file from one location to other.
```bash
cp filename1 filename2
```
Where `filename1` is the source path to the file and `filename2` is the destination path to the file.

### e. `diff`
Compares files, and lists their differences.
```bash
diff filename1 filename2
```

### f. `file`
Determine file type.
```bash
file filename
                                                                      
Example:
```bash
$ file index.html
 index.html: HTML document, ASCII text
```
### g. `find`
Find files in directory
```bash
find directory options pattern
```
Example:
```bash
$ find . -name README.md
$ find /home/user1 -name '*.png'
```

### h. `gunzip`
Un-compresses files compressed by gzip.
```bash
gunzip filename
```

### i. `gzcat`
Lets you look at gzipped file without actually having to gunzip it.
```bash
gzcat filename
```

### j. `gzip`
Compresses files.
```bash
gzip filename
```

### k. `head`
Outputs the first 10 lines of file
```bash
head filename
```

### l. `lpq`
Check out the printer queue.
```bash
lpq
```
Example:
```bash
$ lpq
Rank    Owner   Job     File(s)                         Total Size
active  adnanad 59      demo                            399360 bytes
1st     adnanad 60      (stdin)                         0 bytes
```

### m. `lpr`
Print the file.
```bash
lpr filename
```

### n. `lprm`
Remove something from the printer queue.
```bash
lprm jobnumber
```

### o. `ls`
Lists your files. `ls` has many options: `-l` lists files in 'long format', which contains the exact size of the file, who owns the file, who has the right to look at it, and when it was last modified. `-a` lists all files, including hidden files. For more information on this command check this [link](https://ss64.com/bash/ls.html).
```bash
ls option
```
Example:
<pre>
$ ls -la
rwxr-xr-x   33 adnan  staff    1122 Mar 27 18:44 .
drwxrwxrwx  60 adnan  staff    2040 Mar 21 15:06 ..
-rw-r--r--@  1 adnan  staff   14340 Mar 23 15:05 .DS_Store
-rw-r--r--   1 adnan  staff     157 Mar 25 18:08 .bumpversion.cfg
-rw-r--r--   1 adnan  staff    6515 Mar 25 18:08 .config.ini
-rw-r--r--   1 adnan  staff    5805 Mar 27 18:44 .config.override.ini
drwxr-xr-x  17 adnan  staff     578 Mar 27 23:36 .git
-rwxr-xr-x   1 adnan  staff    2702 Mar 25 18:08 .gitignore
</pre>

### p. `more`
Shows the first part of a file (move with space and type q to quit).
```bash
more filename
```

### q. `mv`
Moves a file from one location to other.
```bash
mv filename1 filename2
```
Where `filename1` is the source path to the file and `filename2` is the destination path to the file.

Also it can be used for rename a file.
```bash
mv old_name new_name
```

### r. `rm`
Removes a file. Using this command on a directory gives you an error.
`rm: directory: is a directory`
To remove a directory you have to pass `-r` which will remove the content of the directory recursively. Optionally you can use `-f` flag to force the deletion i.e. without any confirmations etc.
```bash
rm filename
```

### s. `tail`
Outputs the last 10 lines of file. Use `-f` to output appended data as the file grows.
```bash
tail filename
```

### t. `touch`
Updates access and modification time stamps of your file. If it doesn't exists, it'll be created.
```bash
touch filename
```
Example:
```bash
$ touch trick.md
```

### 2.2.2 Text Operations

|[ **awk**](#a-awk) | [**cut**](#b-cut) | [**echo**](#c-echo) | [**egrep**](#d-egrep) | [**fgrep**](#e-fgrep) | [**fmt**](#f-fmt) | [**grep**](#g-grep) |
|---------|---------|----------|-----------|-----------|---------|----------|
| [**nl**](#h-nl)  | [**sed**](#i-sed) | [**sort**](#j-sort) | [**tr**](#k-tr)    | [**uniq**](#l-uniq)  | [**wc**](#m-wc)  |        

### a. `awk`
awk is the most useful command for handling text files. It operates on an entire file line by line. By default it uses whitespace to separate the fields. The most common syntax for awk command is

```bash
awk '/search_pattern/ { action_to_take_if_pattern_matches; }' file_to_parse
```

Lets take following file `/etc/passwd`. Here's the sample data that this file contains:
```
root:x:0:0:root:/root:/usr/bin/zsh
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
```
So now lets get only username from this file. Where `-F` specifies that on which base we are going to separate the fields. In our case it's `:`. `{ print $1 }` means print out the first matching field.
```bash
awk -F':' '{ print $1 }' /etc/passwd
```
After running the above command you will get following output.
```
root
daemon
bin
sys
sync
```
For more detail on how to use `awk`, check following [link](https://www.cyberciti.biz/faq/bash-scripting-using-awk).


### b. `cut`
Remove sections from each line of files

*example.txt*
```bash
red riding hood went to the park to play
```

*show me columns 2 , 7 , and 9 with a space as a separator*
```bash
cut -d " " -f2,7,9 example.txt
```
```bash
riding park play
```

### c. `echo`
Display a line of text

*display "Hello World"*
```bash
echo Hello World
```
```bash
Hello World
```

*display "Hello World" with newlines between words*
```bash
echo -ne "Hello\nWorld\n"
```
```bash
Hello
World
```

### d. `egrep`
Print lines matching a pattern - Extended Expression (alias for: 'grep -E')

*example.txt*
```bash
Lorem ipsum
dolor sit amet,
consetetur
sadipscing elitr,
sed diam nonumy
eirmod tempor
invidunt ut labore
et dolore magna
aliquyam erat, sed
diam voluptua. At
vero eos et
accusam et justo
duo dolores et ea
rebum. Stet clita
kasd gubergren,
no sea takimata
sanctus est Lorem
ipsum dolor sit
amet.
```

*display lines that have either "Lorem" or "dolor" in them.*
```bash
egrep '(Lorem|dolor)' example.txt
or
grep -E '(Lorem|dolor)' example.txt
```
```bash
Lorem ipsum
dolor sit amet,
et dolore magna
duo dolores et ea
sanctus est Lorem
ipsum dolor sit
```

### e. `fgrep`
Print lines matching a pattern - FIXED pattern matching  (alias for: 'grep -F')

*example.txt*
```bash
Lorem ipsum
dolor sit amet,
et dolore magna
duo dolores et ea
sanctus est Lorem
ipsum dolor sit
```

### e. `fgrep`
Print lines matching a pattern - FIXED pattern matching  (alias for: 'grep -F')

*example.txt*
```bash
Lorem ipsum
dolor sit amet,
consetetur
sadipscing elitr,
sed diam nonumy
eirmod tempor
foo (Lorem|dolor)
invidunt ut labore
et dolore magna
aliquyam erat, sed
diam voluptua. At
vero eos et
accusam et justo
duo dolores et ea
rebum. Stet clita
kasd gubergren,
no sea takimata
sanctus est Lorem
ipsum dolor sit
amet.
```

*Find the exact string '(Lorem|dolor)' in example.txt*
```bash
fgrep '(Lorem|dolor)' example.txt
or
grep -F '(Lorem|dolor)' example.txt
```
```bash
foo (Lorem|dolor)
```
### f. `fmt`
Simple optimal text formatter

*example: example.txt (1 line)*
```bash
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
```

*output the lines of example.txt to 20 character width*
```bash
cat example.txt | fmt -w 20
```
```bash
Lorem ipsum
dolor sit amet,
consetetur
sadipscing elitr,
sed diam nonumy
eirmod tempor
invidunt ut labore
et dolore magna
aliquyam erat, sed
diam voluptua. At
vero eos et
accusam et justo
duo dolores et ea
rebum. Stet clita
kasd gubergren,
no sea takimata
sanctus est Lorem
ipsum dolor sit
amet.
```

### g. `grep`
Looks for text inside files. You can use grep to search for lines of text that match one or many regular expressions, and outputs only the matching lines.
```bash
$ grep admin /etc/passwd
_kadmin_admin:*:218:-2:Kerberos Admin Service:/var/empty:/usr/bin/false
_kadmin_changepw:*:219:-2:Kerberos Change Password Service:/var/empty:/usr/bin/false
_krb_kadmin:*:231:-2:Open Directory Kerberos Admin Service:/var/empty:/usr/bin/false
```
You can also force grep to ignore word case by using `-i` option. `-r` can be used to search all files under the specified directory, for example:
```bash
$ grep -r admin /etc/
```
And `-w` to search for words only. For more detail on `grep`, check following [link](https://www.cyberciti.biz/faq/grep-in-bash).

### h. `nl`
Number lines of files

*example.txt*
```bash
Lorem ipsum
dolor sit amet,
consetetur
sadipscing elitr,
sed diam nonumy
eirmod tempor
invidunt ut labore
et dolore magna
aliquyam erat, sed
diam voluptua. At
vero eos et
accusam et justo
duo dolores et ea
rebum. Stet clita
kasd gubergren,
no sea takimata
sanctus est Lorem
ipsum dolor sit
amet.
```

*show example.txt with line numbers*
```bash
nl -s". " example.txt
```
```bash
1. Lorem ipsum
     2. dolor sit amet,
     3. consetetur
     4. sadipscing elitr,
     5. sed diam nonumy
     6. eirmod tempor
     7. invidunt ut labore
     8. et dolore magna
     9. aliquyam erat, sed
    10. diam voluptua. At
    11. vero eos et
    12. accusam et justo
    13. duo dolores et ea
    14. rebum. Stet clita
    15. kasd gubergren,
    16. no sea takimata
    17. sanctus est Lorem
    18. ipsum dolor sit
    19. amet.
```

### i. `sed`
Stream editor for filtering and transforming text

*example.txt*
```bash
Hello This is a Test 1 2 3 4
```

*replace all spaces with hyphens*
```bash
sed 's/ /-/g' example.txt
```
```bash
Hello-This-is-a-Test-1-2-3-4
```

*replace all digits with "d"*
```bash
sed 's/[0-9]/d/g' example.txt
```
```bash
Hello This is a Test d d d d
```
### j. `sort`
Sort lines of text files

*example.txt*
```bash
f
b
c
g
a
e
d
```

*sort example.txt*
```bash
sort example.txt
```
```bash
a
b
c
d
e
f
g
```

*randomize a sorted example.txt*
```bash
sort example.txt | sort -R
```
```bash
b
f
a
c
d
g
e
```

### k. `tr`
Translate or delete characters


*example.txt*
```bash
Hello World Foo Bar Baz!
```

*take all lower case letters and make them upper case*
```bash
cat example.txt | tr 'a-z' 'A-Z'
```
```bash
HELLO WORLD FOO BAR BAZ!
```

*take all spaces and make them into newlines*
```bash
cat example.txt | tr ' ' '\n'
```
```bash
Hello
World
Foo
Bar
Baz!
```

### l. `uniq`
Report or omit repeated lines

*example.txt*
```bash
a
a
b
a
b
c
d
c
```

*show only unique lines of example.txt (first you need to sort it, otherwise it won't see the overlap)*
```bash
sort example.txt | uniq
```
```bash
a
b
c
d
```

*show the unique items for each line, and tell me how many instances it found*
```bash
sort example.txt | uniq -c
```
```bash
    3 a
    2 b
    2 c
    1 d
```

### m. `wc`
Tells you how many lines, words and characters there are in a file.
```bash
wc filename
```
Example:
```bash
$ wc demo.txt
7459   15915  398400 demo.txt
```
Where `7459` is lines, `15915` is words and `398400` is characters.

## 2.2.3 Functions


A Bash function is essentially a set of commands that can be called numerous times.

Examples

```
print_something () {
echo Hello $1
}
print_something Mars
print_something Jupiter
```


## 2.3. Flow control (if/for/case)
### 2.3.1. If

	if command ; then ; command(s) ; fi
	if [ condition ] ; then ; command(s) ; fi
	if [[ condition/s ]] ; then ; command(s) ; fi
	if (( condition/s )) ; then ; command(s) ; fi

#### 2.3.1.1. Test condition files

	[-b file] File exist and is a block file
	[-c file] File exist and is a character file
	[-d file] File exist and it's a directory
	[-e file] File exist
	[-f File] File exist and is a regular file

### 2.3.2 Case

	switch (c) {
	 case 1: return 10;
	 case 2: return 20;
	 default: return 0;
	}

	case in $c
	 1) return 10 ;;
	 2) return 20 ;;
	 *) return 0 ;;
	esac

### 2.3.3 For


 A 'for loop' is a bash programming language statement which allows code to be repeatedly executed.

```
for (( c=1; c<=5; c++ ))
do
	echo "Welcome $c times"
done

for VARIABLE in file1 file2 file3
do
	command1 on $VARIABLE
	command2
	commandN
done
```                

# 3. Examples

## 3.1. Execute a script


First of all, i have to tell you how to create and execute a script in shell.

If you want to create a script you have to writh in shell, vim (or ur favorite editor) and the name of the script and ".sh" to give it the extension

```
-  vim nameofthescript.sh
```

When you are editing the script you have to say that you're scripting in bash so you have to write before your script

- #!/bin/bash


Now you can start programming your code to hack NASA!!



## 3.2. Examples

### 3.2.1. Conditionals(If)


Syntax  What it is    When to use

#### Examples

```
A=2
B=3

result=$(( A + B + 0))

if [ $result =  0 ]
then
	echo "Result A + B equals 0"
elif [ $result < 10 ]
then
	echo "Result is less than 10  = $result"
elif [ $result > 10 ]
then
	echo "Result is greater than 10 =  $result"
fi

RESULT:
Returns echo " Result is less than 10 = 5 "
```

### 3.2.2. Switch or Case

#### Examples

```
echo "Do you know Bash Programming?"

read -p "Yes/No?:" Answer


case $Answer in
   Yes|yes|y|Y)
	echo "That's amazing."
   ;;
   No|no|n|N)
	echo "It's easy. Let's start learning."
   ;;
 esac

```

### For Syntax


 #### Examples

```
for i in {1..5}
do
	echo "Welcome $i times"
done
```         
            
### Arrays

#### For Each Element in Array

-> In the following script, we take an array arr with three items, and iterate over the items of this array using For loop with for-each syntax.

```
arr=( "apple" "banana" "cherry" )
 
for item in "${arr[@]}"
do
    echo $item
done

```

#### Iterate over Array Items using For Loop and Index
  
-> We take index and increment it in for loop until array length. During each iteration of the loop, we use the index to access the item in array.

```
arr=( "apple" "banana" "cherry" )
 
for (( i=0; i<${#arr[@]}; i++ ));
do
    echo ${arr[$i]}
done
```

### Associative arrays


->An array variable is used to store multiple data with index and the value of each array element is accessed by the corresponding index value of that element.
```
   declare -A B
   B[hola]=3
   B[hello]=4


   echo "${B[hola]}"
   echo "B has ${#B[@]} elements: ${!B[@]}"
```

->You can access the array values using ${!B[@]} and the lentgh of the array using ${#B[@]}.

```
   for i in ${!B[@]} ; do echo $i ; done
  	echo "${B[hola]}"
   	echo "B has ${#B[@]} elements: ${!B[@]}"

   for i in "${!B[@]}" ; do echo $i ; done
```

##### Add new data

->A new array element can be added easily in the associative array after declaring and initializing the array. 

```
	echo "${assArray2[@]}"
	assArray2+=([Mouse]=Logitech)
	echo "${assArray2[@]}"
```

##### Remove data 
	```
	unset assArray2[Monitor]
	echo ${assArray2[Monitor]}
	```

##### Example Array Assosiative

An associative array can be declared in bash by using the declare keyword and the array elements can be initialized at the time of array declaration or after declaring the array variable.

```	declare -A arrayAssos

	arrayAssos[fruit]=mango
	arrayAssos[bird]=Cockatail
	arrayAssos[flower]=Rose
	arrayAssos[animal]=Tiger
```

##### Global / Local declaration

Local variable								Global variable
It is declared inside the function and only can used in the function	It can be declared outside the function anywhere in the program.


### Redirections

">" Redirect to a file or stdout
"<" Input from a file or stdin
"<<" Append to a file (for stdin append doesn't make sense)
">>"" Redirect and append to a file (for stdout append doesn't make sense)

#### e.g

Lets try some scripts

```
ls -l > filename.txt
```
This will create the filename.txt and then will add the ls -ls but if you use two ">>" you will add a line without replacing

something like this :

```
echo hello >> filename.txt
```
You should read the ls -l and at the end of the line you should read hello

REMEMBER ONE ">" REPLACE THE TEXT, TWO ">>" ADD A NEW LINE AND ADD THE TEXT

### Trap

#### Trap to block actions! 

You can use the trap builtin to handle a user pressing ctrl-c during the execution of a Bash script. e.g. if you need to perform some cleanup functions.

```
trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
        echo "** Trapped CTRL-C"
}
```

### 3.2.3. Sample snippets



- [Introduction.sh](Tutorial/Introduction.sh)
- [exercici.sh](Tutorial/exercici.sh)
- [example1.sh](Tutorial/example1.sh)

- [FirstStep.sh](Tutorial/FirstStep.sh)
- [SecondStep.sh](Tutorial/SecondStep.sh)
- [ThirdStep.sh](Tutorial/ThirdStep.sh)
- [FourthStep.sh](Tutorial/FourthStep.sh)
- [Fifth.sh](Tutorial/Fifth.sh)
- [sixth.sh](Tutorial/sixth.sh)
- [seventh.sh](Tutorial/seventh.sh)
- [Compare Strings Exercice](Tutorial/compareStrings.sh)
- [Exercice FileName](Tutorial/filename.sh)
- [Exercice fuctions](Tutorial/MyFunction.sh)
- [Oaen a Url with Bash](Tutorial/OpenAURL.sh)

#### Syntax

- [arrays.sh](Tutorial/arrays.sh)
- [compareStrings.sh](Tutorial/compareStrings.sh)
- [exerciceParameters.sh](Tutorial/exerciceParameters.sh)
- [filename.sh](Tutorial/filename.sh)
- [isdirectory.sh](Tutorial/isdirectory.sh)
- [MyFunction.sh](Tutorial/MyFunction.sh)
- [RepasParameters.sh](Tutorial/RepasParameters.sh)
- [switch.sh](Tutorial/switch.sh)

# 4. One liners

## 4.1.1.Examples

Generate a sequence of numbers
	```
	for i in {1..10};do echo $i;done
	```
Append a string to a file
	```
	echo "foo bar baz" >> file
	```
Read the first line from a file and put it in a variable
	```
	read -r line < file
	```

Search all files on  a folder in one line.
	```
	ls -1 Tutorial/ | while read i ; do echo Tutorial/$i ; done
	```

```
compareStrings.sh
Fifth.sh
filename.sh
FourthStep.sh
Introduction.sh
MyFunction.sh
OpenAURL.sh
SecondStep.sh
seventh.sh
sixth.sh
switch.sh
ThirdStep.sh
```

# 5. Exercises

### 5.1. Simple function mapping


Hint:

```
foo() { echo foo ; }
bar() { echo bar ; }

# main

case "$1" in
foo|bar) "$@" ;;
*) echo "command \"$1\" not available" ;;
esac
```

```
case "$1" in
md5sum|sha1sum|sha256) $1 "$2" ;;
*) echo "error..."
esac
```

### 5.1.2. Operand-based function mapping

Hint:

```

sum() { echo $(($1 + $2)) ; }
mul() { echo $(($1 * $2)) ; }
map() {
	local i op=$1 param=$(($2 + 0))
	for ((i = 0; i < 10; i++)) ; do
		$op $param $i
	done
}

# main

case "$1"
sum|mul) map $1 $2 ;;
*)) echo "error..." ;;
esac

# Example: script.sh sum 3
```



## 5.2. Multi-process

### 5.2.1. One-pass read

In one pass, read one file, e.g. file.txt, and do:

 - MD5, SHA1, SHA256 hashes, compress the file to file.txt.zstd

Hint:

 - Use 'tee' and process substitution (e.g. >(command) )

[Solution](solutions/Solution4.sh)


### 5.2.2. One-pass read

Download Ubuntu 20.04 and 21.04, in parallel, wait for the download jobs, and then compress in parallel the ISO's to $NAME.zstd

Hint:

 - Use background processes (&) and process synchronization ('wait')

[Solution](solutions/Solution2.sh)


# 6. References

- [Page 1 - PluralSlight - ](https://www.pluralsight.com/courses/bash-shell-scripting?aid=7010a000002BWqGAAW&promo=&utm_source=non_branded&utm_medium=digital_paid_search_google&utm_campaign=EMEA_Dynamic&utm_content=&gclid=EAIaIQobChMIipadp_709QIVweJ3Ch2yfQziEAAYASAAEgKnmvD_BwE)
- [Page 2 - Udemy - ](https://www.udemy.com/course/bash-scripting/)
- [Page 3 - Linux - ](https://www.linux.com/training-tutorials/writing-simple-bash-script/)
- [Page 4 - Bioinf - ](https://bioinf.comav.upv.es/courses/unix/scripts_bash.html)
- [Page 5 - Linuxconfig - ](https://linuxconfig.org/bash-scripting-tutorial-for-beginners)
- [Page 6 - hostinger - ](https://www.hostinger.es/tutoriales/bash-script-linux)
- [Page 7 - linux - ](https://www.linux.com/training-tutorials/writing-simple-bash-script/)
                    
