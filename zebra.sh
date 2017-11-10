#!/bin/bash
#----------------------------------------------------------------------------
#
#	Purpose: Figure out zebra puzzle
#
#----------------------------------------------------------------------------
#
#	Puzzle
#
#----------------------------------------------------------------------------
#
#	There are five houses.
# 	The Englishman lives in the red house.
# 	The Spaniard owns the dog.
# 	Coffee is drunk in the green house.
# 	The Ukrainian drinks tea.
# 	The green house is immediately to the right of the ivory house.
#  	The Old Gold smoker owns snails.
# 	Kools are smoked in the yellow house.
#	Milk is drunk in the middle house.
#	The Norwegian lives in the first house.
#	The man who smokes Chesterfields lives next to the man with the fox.
#	Kools are smoked in the house next to the house with the horse.
#	The Lucky Strike smoker drinks orange juice.
#	The Japanese smokes Parliaments.
#	The Norwegian lives next to the blue house.
#	Now, who drinks water? Who owns the zebra?
#
#----------------------------------------------------------------------------
#
#	Men
#
#----------------------------------------------------------------------------
	E=Englishman
	S=Spaniard
	U=Ukranian
	N=Norwegian
	J=Japanese
#----------------------------------------------------------------------------
#
#	Color
#
#----------------------------------------------------------------------------
	R=Red
	G=Green
	I=Indigo
	Y=Yellow
	B=Blue
#----------------------------------------------------------------------------
#
#	Pet
#
#----------------------------------------------------------------------------
	D=Dog
	A=Snail
	Z=Zebra
	F=Fox
	H=Horse
#----------------------------------------------------------------------------
#
#	Drink
#
#----------------------------------------------------------------------------
	W=Water
	M=Milk
	O=OJ
	C=Coffee
	T=Tea
#----------------------------------------------------------------------------
#
#	Cigarettes
#
#----------------------------------------------------------------------------
	K=Kools
	L=LuckyStrike
	P=Parliaments
	Q=Chesterfield
	X=OldGold
#----------------------------------------------------------------------------
#
#	Put together houses
#
#----------------------------------------------------------------------------
	> houses
	for man in E S U N J
	do
		for color in R G I Y B
		do
			for pet in D A Z F H
			do
				for drink in W M O C T
				do
					for cig in K L P Q X
					do
						echo "${man}|${color}|${pet}|${drink}|${cig}" >> houses
					done
				done
			done
		done
	done
#----------------------------------------------------------------------------
#
#	The Englishman lives in the red house
#
#----------------------------------------------------------------------------
	cat houses | grep -v E | grep -v R > new
	cat houses | grep E | grep R >> new
	cat new > houses
#----------------------------------------------------------------------------
#
#	The Spaniard owns the dog
#
#----------------------------------------------------------------------------
	cat houses | grep -v S | grep -v D > new
	cat houses | grep S | grep D >> new
	cat new > houses
#----------------------------------------------------------------------------
#
#	Coffee is drunk in the green house
#
#----------------------------------------------------------------------------
	cat houses | grep -v C | grep -v G > new
	cat houses | grep C | grep G >> new
	cat new > houses
#----------------------------------------------------------------------------
#
#	The Ukrainian drinks tea
#
#----------------------------------------------------------------------------
	cat houses | grep -v U | grep -v T > new
	cat houses | grep U | grep T >> new
	cat new > houses
#----------------------------------------------------------------------------
#
#	The Old Gold smoker owns snails
#
#----------------------------------------------------------------------------
	cat houses | grep -v X | grep -v A > new
	cat houses | grep X | grep A >> new
	cat new > houses
#----------------------------------------------------------------------------
#
#	Kools are smoked in the yellow house
#
#----------------------------------------------------------------------------
	cat houses | grep -v K | grep -v Y > new
	cat houses | grep K | grep Y >> new
	cat new > houses
#----------------------------------------------------------------------------
#
#	The man who smokes Chesterfields lives next to the man with the fox.
#
#----------------------------------------------------------------------------
	cat houses | grep -v C | grep -v F > new
	cat houses | grep C | grep -v F >> new
	cat houses | grep F | grep -v C >> new
	cat new > houses
#----------------------------------------------------------------------------
#
#	Kools are smoked in the house next to the house with the horse.
#
#----------------------------------------------------------------------------
	cat houses | grep -v K | grep -v H > new
	cat houses | grep K | grep -v H >> new
	cat houses | grep H | grep -v K >> new
	cat new > houses
#----------------------------------------------------------------------------
#
#	The Lucky Strike smoker drinks orange juice
#
#----------------------------------------------------------------------------
	cat houses | grep -v L | grep -v O > new
	cat houses | grep L | grep O >> new
	cat new > houses
#----------------------------------------------------------------------------
#
#	The Japanese smokes Parliaments
#
#----------------------------------------------------------------------------
	cat houses | grep -v J | grep -v P > new
	cat houses | grep J | grep P >> new
	cat new > houses
#----------------------------------------------------------------------------
#
#	Generate possible blocks
#
#	The Norwegian lives in house #1
#	The Norwegian lives next to the blue house #2
#	Milk is drunk in house #3
#
#----------------------------------------------------------------------------
	> blocks
	for h1 in `cat houses | grep N`
	do
	for h2 in `cat houses | grep B | egrep -v "$h1"`
	do
	for h3 in `cat houses | grep M | egrep -v "$h1" | egrep -v "$h2"`
	do
	for h4 in `cat houses | egrep -v "$h1" | egrep -v "$h2" | \
             egrep -v "$h3"`
	do
	for h5 in `cat houses | egrep -v "$h1" | egrep -v "$h2" | \
              egrep -v "$h3" | egrep -v "$h4"`
	do
		echo "$h1$h2$h3$h4$h5" | sed 's/|//g' >> blocks
	done
	done
	done
	done
	done
#----------------------------------------------------------------------------
#
#	5. The green house is immediately to the right of the ivory house
#
#----------------------------------------------------------------------------
	> new
	for b in `cat blocks`
	do
		colors=`echo $b | cut -c2,7,12,17,22`
		if [ `echo $colors | grep -c IG` -gt "0" ]
		then
			echo $b >> new
		fi
	done
	cat new > blocks
#----------------------------------------------------------------------------
#
#	Cigarette Animals
#
#	10. The man who smokes Chesterfields lives next to the fox
#	11. Kools are smoked in the house next to the horse
#
#----------------------------------------------------------------------------
	> new
	for b in `cat blocks`
	do
		ca=`echo $b | cut -c3,10,13,20,23`
		ac=`echo $b | cut -c5,8,15,17,24`
		all="$ca $ac"
		if [[ `echo "$all" | egrep -c "QF|FQ"` -gt "0" ]]
		then
			if [[ `echo "$all" | egrep -c "KH|HK"` -gt "0" ]]
			then
				echo $b >> new
			fi
		fi
	done
	cat new > blocks
#----------------------------------------------------------------------------
#
#	Solution
#
#----------------------------------------------------------------------------
	echo "The solution is: `cat blocks`"
#----------------------------------------------------------------------------
#
#	Who drinks water?
#	People Drinks
#
#----------------------------------------------------------------------------
	pda=`cat blocks | cut -c1,4`
	pdb=`cat blocks | cut -c6,9`
	pdc=`cat blocks | cut -c11,14`
	pdd=`cat blocks | cut -c16,19`
	pde=`cat blocks | cut -c21,24`
	for pd in $pda $pdb $pdc $pdd $pde
	do
		if [[ `echo $pd | grep -c W` -gt "0" ]]
		then
			p=`echo $pd | cut -c1`
		fi
	done
	case $p in
		E)	echo "The Englishman drinks the water";;
		S)	echo "The Spaniard drinks the water";;
		U)	echo "The Ukranian drinks the water";;
		N)	echo "The Norwegian drinks the water";;
		J)	echo "The Japanese drinks the water";;
	esac
#----------------------------------------------------------------------------
#
#	Who owns the zebra?
#	People Animals
#
#----------------------------------------------------------------------------
	paa=`cat blocks | cut -c1,3`
	pab=`cat blocks | cut -c6,8`
	pac=`cat blocks | cut -c11,13`
	pad=`cat blocks | cut -c16,18`
	pae=`cat blocks | cut -c21,23`
	for pa in $paa $pab $pac $pad $pae
	do
		if [[ `echo $pa | grep -c Z` -gt "0" ]]
		then
			p=`echo $pa | cut -c1`
		fi
	done
	case $p in
		E)	echo "The Englishman owns the zebra";;
		S)	echo "The Spaniard owns the zebra";;
		U)	echo "The Ukranian owns the zebra";;
		N)	echo "The Norwegian owns the zebra";;
		J)	echo "The Japanese owns the zebra";;
	esac
#----------------------------------------------------------------------------
#
#	Cleanup
#
#----------------------------------------------------------------------------
	rm houses blocks new
