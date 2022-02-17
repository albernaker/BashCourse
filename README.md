# Project Title
[TOC]

# 1. Introduction

Hello user! I'm here to talk about my bash course, here i will explain some scripts to learn about bash.



# 2. Execute an scripting


First of all, i have to tell you how to create and execute a script in shell.

If you want to create a script you have to writh in shell, vim (or ur favorite editor) and the name of the script and ".sh" to give it the extension

```
-  vim nameofthescript.sh
```

When you are editing the script you have to say that you're scripting in bash so you have to write before your script

- #!/bin/bash


Now you can start programing your code to hack NASA!!




# 2. Syntax and Examples

 - Conditionals(If)

```
Syntax  What it is    When to use

if ( <commands> )     Subshell executed in a subprocess.      When the commands affect the current shell or environment. The changes do not remain when the subshell completes.
if (( <commands> ))   Bash extension. Use for arithmetic operations and C-style variable manipulation.
if [ <commands> ]     POSIX builtin, alias for test <commands>.       Comparing numbers and testing whether a file exists.
if [[ <commands> ]]   Bash extension, an advanced version of single square brackets.  String matching a wildcard pattern.
```
Examples

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



- Switch or Case Syntax(case)

```
case EXPRESSION in

  PATTERN_1)
    STATEMENTS
    ;;

  PATTERN_2)
    STATEMENTS
    ;;

  PATTERN_N)
    STATEMENTS
    ;;

  *)
    STATEMENTS    ;;
esac

```
Examples

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

- Functions

```
A Bash function is essentially a set of commands that can be called numerous times. 
```
Examples

```
print_something () {
echo Hello $1
}
print_something Mars
print_something Jupiter


```

- For Syntax


```
A 'for loop' is a bash programming language statement which allows code to be repeatedly executed. 

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
Examples

```
print_something () {
echo Hello $1
}
print_something Mars
print_something Jupiter


```
- Arrays

```
   A[3]=hola
```

- Associative arrays
```
   declare -A B
   B[hola]=3
   B[hello]=4

   echo "${B[hola]}"
   echo "B has ${#B[@]} elements: ${!B[@]}"

    for i in ${!B[@]} ; do echo $i ; done

     echo "${B[hola]}"
   echo "B has ${#B[@]} elements: ${!B[@]}"

    for i in ${!B[@]} ; do echo $i ; done
```

```


# 4. References

        https://www.pluralsight.com/courses/bash-shell-scripting?aid=7010a000002BWqGAAW&promo=&utm_source=non_branded&utm_medium=digital_paid_search_google&utm_campaign=EMEA_Dynamic&utm_content=&gclid=EAIaIQobChMIipadp_709QIVweJ3Ch2yfQziEAAYASAAEgKnmvD_BwE

        https://www.udemy.com/course/bash-scripting/


