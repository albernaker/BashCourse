# Project Title

# 1. Introduction

Hello user! I'm here to talk about my bash course, here i will explain some scripts to learn about bash.

# 2. Bash notions

# 2.1. Variables

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

# 2.1.1. Parameters

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

# 2.1.2. Arithmetic variable asignment
```
A=123
B=$((A * 3 + 1))
B=$(($A * 3 + 1))
```


# 2.2. Functions


A Bash function is essentially a set of commands that can be called numerous times.

Examples

```
print_something () {
echo Hello $1
}
print_something Mars
print_something Jupiter
```


# 2.3. Flow control (if/for/case)
# 2.3.1. If

        if command ; then ; command(s) ; fi
        if [ condition ] ; then ; command(s) ; fi
        if [[ condition/s ]] ; then ; command(s) ; fi
        if (( condition/s )) ; then ; command(s) ; fi

# 2.3.x. Case
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

# 2.3.3 For


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

# 3.1. Execute a script


First of all, i have to tell you how to create and execute a script in shell.

If you want to create a script you have to writh in shell, vim (or ur favorite editor) and the name of the script and ".sh" to give it the extension

```
-  vim nameofthescript.sh
```

When you are editing the script you have to say that you're scripting in bash so you have to write before your script

- #!/bin/bash


Now you can start programing your code to hack NASA!!



# 3.2. Examples

 #Conditionals(If)


Syntax  What it is    When to use

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

# Switch or Case

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

- For Syntax
```

 Examples

```
	for i in {1..5}
	do
   		echo "Welcome $i times"
	done
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


# 4. References

        https://www.pluralsight.com/courses/bash-shell-scripting?aid=7010a000002BWqGAAW&promo=&utm_source=non_branded&utm_medium=digital_paid_search_google&utm_campaign=EMEA_Dynamic&utm_content=&gclid=EAIaIQobChMIipadp_709QIVweJ3Ch2yfQziEAAYASAAEgKnmvD_BwE
        https://www.udemy.com/course/bash-scripting/
        https://www.linux.com/training-tutorials/writing-simple-bash-script/
        https://bioinf.comav.upv.es/courses/unix/scripts_bash.html
        https://linuxconfig.org/bash-scripting-tutorial-for-beginners
        https://www.hostinger.es/tutoriales/bash-script-linux
        https://www.linux.com/training-tutorials/writing-simple-bash-script/
                    
