#!/bin/bash

tolower() { awk '{print tolower($0)}' ; }
toupper() { awk '{print toupper($0)}' ; }
#head -c 10 | awk '{print toupper($0)}'
#awk '{print tolower($0)}'

#toupper=$(awk '{print toupper($0) }' <<< $1)
#tee >(awk '{print tolower($0)}' <<<$1)


foo() {
	cat kk | tee >(cmd1 >cmd1.out) >(cmd2 >cmd2.out)
	tee <kk >(cmd1) >(cmd2)

	cmd1 </dev/fd/3234 >cmd1.out
	cmd1 </dev/fd/3235 >cmd2.out
}


#tee >(tolower >lower.txt) >(toupper >upper.txt)
tee >(tolower >lower.txt) | toupper >upper.txt

