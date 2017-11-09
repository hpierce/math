#!/bin/bash
#----------------------------------------------------------------------------
#
#       Purpose: Solve Puzzle
#
#----------------------------------------------------------------------------
#
#	Puzzle by Bob Kraus
#
#----------------------------------------------------------------------------
#
#	1. The next question with the same answer as this one is:
#	(A) 2 
#	(B) 3 
#	(C) 4 
#	(D) 5
#	
#	2. The first question with answer C is:
#	(A) 1 
#	(B) 2 
#	(C) 3 
#	(D) 4
#	
#	3. The last question with answer A is:
#	(A) 5 
#	(B) 6 
#	(C) 7 
#	(D) 8
#	
#	4. The number of questions with answer D is:
#	(A) 1 
#	(B) 2 
#	(C) 3 
#	(D) 4
#	
#	5. The answer occuring the most is: (if tied, first alphabetically)	
#	(A) A 
#	(B) B 
#	(C) C 
#	(D) D
#	
#	6. The first question with the same answer as the question following it is:
#	(A) 2 
#	(B) 3 
#	(C) 4 
#	(D) 5
#
#	7. The answer occuring the least is: (if tied, last alphabetically)
#	(A) A 
#	(B) B 
#	(C) C 
#	(D) D
#	
#	8. The highest possible score on this test is:
#	(A) 5 
#	(B) 7 
#	(C) 6 
#	(D) 8
#
#----------------------------------------------------------------------------
	> poss
	for a in A B C D
	do
	for b in A B C D
	do
	for c in A B C D
	do
	for d in A B C D
	do
	for e in A B C D
	do
	for f in A B C D
	do
	for g in A B C D
	do
	for h in A B C D
	do
		echo $a$b$c$d$e$f$g$h >> poss
	done
	done
	done
	done
	done
	done
	done
	done
#----------------------------------------------------------------------------
#
#	Possible outcomes?
#
#----------------------------------------------------------------------------
	po=`cat poss | wc -l`
	echo "$po outcomes to begin with"
#----------------------------------------------------------------------------
#
#	1. The next question with the same answer as this one is:
#	(A) 2 
#	(B) 3 
#	(C) 4 
#	(D) 5
#
#----------------------------------------------------------------------------
	cat poss | grep "^AA" > new
	cat poss | grep "^B[A-D]B" >> new
	cat poss | grep "^C[A-D][A-D]C" >> new
	cat poss | grep "^D[A-D][A-D][A-D]D" >> new
	cat new > poss
	po=`cat poss | wc -l`
	echo "$po outcomes after Q1"
#----------------------------------------------------------------------------
#	
#	2. The first question with answer C is:
#	(A) 1 
#	(B) 2 
#	(C) 3 
#	(D) 4
#
#	If Q2 = A, then Q1 = C and Q4 = C
#	If Q2 = B, then Q2 = C : false, so Q2 != B
#	If Q2 = C, then Q3 = C and Q2 < Q3 : false so Q2 != C
#	If Q2 = D, then Q4 = C and Q1 != C and Q2 != C and Q3 != C
#	
#----------------------------------------------------------------------------
#	
#	Q2 !=B and Q2 !=C
#	
#----------------------------------------------------------------------------
	cat poss | grep "^[A-D][AD]" > new
	cat new > poss
#----------------------------------------------------------------------------
#	
#	If Q2 = A, then Q1 = C and Q4 = C
#	If Q2 = D, then Q4 = C and Q1 != C and Q3 != C
#	
#----------------------------------------------------------------------------
	cat poss | grep "^CA[A-D]C" > new
	cat poss | grep "^[ABD]D[ABC]C" >> new
	cat new > poss
	po=`cat poss | wc -l`
	echo "$po outcomes after Q2"
#----------------------------------------------------------------------------
#	
#	3. The last question with answer A is:
#	(A) 5 
#	(B) 6 
#	(C) 7 
#	(D) 8
#
#	If Q3 = A, then Q5 = A, Q6, Q7 and Q8 != A
#	If Q3 = B, then Q6 = A, Q7 and Q8 != A
#	If Q3 = C, then Q7 = A and Q8 != A
#	
#----------------------------------------------------------------------------
	cat poss | grep "^[A-D][AD]A[A-D]A[B-D][B-D][B-D]" > new
	cat poss | grep "^[A-D][AD]B[A-D][A-D]A[B-D][B-D]" >> new
	cat poss | grep "^[A-D][AD]C[A-D][A-D][A-D]A[B-D]" >> new
	cat poss | grep "^[A-D][AD]D[A-D][A-D][A-D][A-D]A" >> new
	cat new > poss
	po=`cat poss | wc -l`
	echo "$po outcomes after Q3"
#----------------------------------------------------------------------------
#	
#	4. The number of questions with answer D is:
#	(A) 1 
#	(B) 2 
#	(C) 3 
#	(D) 4
#	
#----------------------------------------------------------------------------
#	
#	Match the number of Ds with Q4.
#	
#----------------------------------------------------------------------------
	> new
	for s in `cat poss`
	do
		dnum=`echo $s | sed -e 's/\(.\)/\1\n/g' | grep -c D`
		q4=`echo $s | cut -c4`
		if [[ "$q4" == "A" ]] && [[ $dnum -eq "1" ]]
		then
			echo $s >> new
		fi
		if [[ "$q4" == "B" ]] && [[ $dnum -eq "2" ]]
		then
			echo $s >> new
		fi
		if [[ "$q4" == "C" ]] && [[ $dnum -eq "3" ]]
		then
			echo $s >> new
		fi
		if [[ "$q4" == "D" ]] && [[ $dnum -eq "4" ]]
		then
			echo $s >> new
		fi
	done
	cat new > poss
	po=`cat poss | wc -l`
	echo "$po outcomes after Q4"
#----------------------------------------------------------------------------
#	
#	5. The answer occuring the most is: (if tied, first alphabetically)	
#	(A) A 
#	(B) B 
#	(C) C 
#	(D) D
#
#----------------------------------------------------------------------------
	> new
	for s in `cat poss`
	do
		anum=`echo $s | sed -e 's/\(.\)/\1\n/g' | grep -c A`
		bnum=`echo $s | sed -e 's/\(.\)/\1\n/g' | grep -c B`
		cnum=`echo $s | sed -e 's/\(.\)/\1\n/g' | grep -c C`
		dnum=`echo $s | sed -e 's/\(.\)/\1\n/g' | grep -c D`

		abig="D"
		max=$dnum

		if [[ $cnum -ge $max ]]
		then
			max=$cnum
			abig="C"
		fi
		if [[ $bnum -ge $max ]]
		then
			max=$bnum
			abig="B"
		fi
		if [[ $anum -ge $max ]]
		then
			max=$anum
			abig="A"
		fi

		q5=`echo $s | cut -c5`
		if [[ "$q5" == "A" ]] && [[ $abig == "A" ]]
		then
			echo $s >> new
		fi
		if [[ "$q5" == "B" ]] && [[ $abig == "B" ]]
		then
			echo $s >> new
		fi
		if [[ "$q5" == "C" ]] && [[ $abig == "C" ]]
		then
			echo $s >> new
		fi
		if [[ "$q5" == "D" ]] && [[ $abig == "D" ]]
		then
			echo $s >> new
		fi
	done
	cat new > poss
	po=`cat poss | wc -l`
	echo "$po outcomes after Q5"
#----------------------------------------------------------------------------
#
#	6. The first question with the same answer as the question following it is:
#	(A) 2 
#	(B) 3 
#	(C) 4 
#	(D) 5
#
#	If Q6 = A, then Q1 != Q2 and Q2 = Q3
#	If Q6 = B, then Q1 != Q2 and Q2 != Q3 and Q3 = Q4
#	If Q6 = C, then Q1 != Q2 and Q2 != Q3 and Q3 != Q4 and Q4 = Q5
#	If Q6 = D, then Q1 != Q2 and Q2 != Q3 and Q3 != Q4 and Q4 != Q5 
#            and Q5 = Q6 and Q5 = A
#
#----------------------------------------------------------------------------
	> new
	for s in `cat poss`
	do
		q1=`echo $s | cut -c1`
		q2=`echo $s | cut -c2`
		q3=`echo $s | cut -c3`
		q4=`echo $s | cut -c4`
		q5=`echo $s | cut -c5`
		q6=`echo $s | cut -c6`

		if [[ "$q6" == "A" ]] && [[ "$q1" != "$q2" ]] && \
		[[ "$q2" == "$q3" ]]
		then
			echo $s >> new
		fi
		if [[ "$q6" == "B" ]] && [[ "$q1" != "$q2" ]] && \
		[[ "$q2" != "$q3" ]] && [[ "$q3" == "$q4" ]]
		then
			echo $s >> new
		fi
		if [[ "$q6" == "C" ]] && [[ "$q1" != "$q2" ]] && \
		[[ "$q2" != "$q3" ]] && [[ "$q3" != "$q4" ]] && \
		[[ "$q4" == "$q5" ]]
		then
			echo $s >> new
		fi
		if [[ "$q6" == "D" ]] && [[ "$q1" != "$q2" ]] && \
		[[ "$q2" != "$q3" ]] && [[ "$q3" != "$q4" ]] && \
		[[ "$q4" != "$q5" ]] && [[ "$q5" == "D" ]]
		then
			echo $s >> new
		fi
	done
	cat new > poss
	po=`cat poss | wc -l`
	echo "$po outcomes after Q6"
#----------------------------------------------------------------------------
#
#	There is only one answer after 6 questions.
#
#----------------------------------------------------------------------------
	echo "The answer is: `cat poss`"
#----------------------------------------------------------------------------
#
#	The last thing to do is validate the last 2 questions.
#
#	7. The answer occuring the least is: (if tied, last alphabetically)
#	(A) A 
#	(B) B 
#	(C) C 
#	(D) D
#
#	8. The highest possible score on this test is:
#	(A) 5 
#	(B) 7 
#	(C) 6 
#	(D) 8
#
#----------------------------------------------------------------------------
#
#	Get answers 7 and 8
#
#----------------------------------------------------------------------------
	q7=`cat poss | cut -c7`
	q8=`cat poss | cut -c8`
#----------------------------------------------------------------------------
#
#	Figure out Q7
#
#----------------------------------------------------------------------------
	anum=`cat poss | sed -e 's/\(.\)/\1\n/g' | grep -c A`
	bnum=`cat poss | sed -e 's/\(.\)/\1\n/g' | grep -c B`
	cnum=`cat poss | sed -e 's/\(.\)/\1\n/g' | grep -c C`
	dnum=`cat poss | sed -e 's/\(.\)/\1\n/g' | grep -c D`
	asmall="A"
	min=$anum
	if [[ $bnum -lt $min ]]
	then
		min=$bnum
		asmall="B"
	fi
	if [[ $cnum -lt $min ]]
	then
		min=$cnum
		asmall="C"
	fi
	if [[ $dnum -lt $min ]]
	then
		min=$dnum
		asmall="A"
	fi
#----------------------------------------------------------------------------
#
#	Remove temporary files
#
#----------------------------------------------------------------------------
	rm new poss
#----------------------------------------------------------------------------
#
#	Print results
#
#----------------------------------------------------------------------------
	if [[ "$q7" == "$asmall" ]]
	then
		echo "Question 7 is correct"
		if [[ $q8 == "D" ]]
		then
			echo "Question 8 is correct"
			echo "The answer is correct"
		else
			echo "Question 8 is incorrect"
			echo "The highest score is not 8"
		fi
	else
		echo "Question 7 is incorrect"
		echo "The highest score is not 8"
		if [[ $q8 == "D" ]]
		then
			echo "Question 8 is correct"
		else
			echo "Question 8 is incorrect"
		fi
	fi

