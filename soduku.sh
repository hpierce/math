#!/bin/bash
#----------------------------------------------------------------------------
#
#       Purpose: Solve a Soduku puzzle in file called puzzle
#
#	Create a file called puzzle in the current directory
#	For unknowns put a zero
#	Example:
#
#	7 9 6 1 0 0 0 0 0
#	0 0 0 0 0 0 0 0 6
#	0 1 0 0 0 5 7 0 0
#	4 7 0 2 5 0 0 0 0
#	0 5 0 0 0 0 0 8 0
#	0 0 0 0 7 3 0 4 9
#	0 0 1 4 0 0 0 7 0
#	9 0 0 0 0 0 0 0 0
#	0 0 0 0 0 6 1 9 4
#
#	Script creates a file called solution in the current directory
#	which represents best effort without brute force
#
#----------------------------------------------------------------------------
#
#	check val
#
#----------------------------------------------------------------------------
function check_val
{
	if [ $VAL = "0" ]
	then
		VAL="123456789"
	fi
}
#----------------------------------------------------------------------------
#
#	Input
#
#----------------------------------------------------------------------------
cat puzzle > solution
LINE=`cat puzzle | head -1`
VAL=`echo $LINE | awk '{print $1}'`; check_val ; AA=$VAL
VAL=`echo $LINE | awk '{print $2}'`; check_val ; AB=$VAL
VAL=`echo $LINE | awk '{print $3}'`; check_val ; AC=$VAL
VAL=`echo $LINE | awk '{print $4}'`; check_val ; AD=$VAL
VAL=`echo $LINE | awk '{print $5}'`; check_val ; AE=$VAL
VAL=`echo $LINE | awk '{print $6}'`; check_val ; AF=$VAL
VAL=`echo $LINE | awk '{print $7}'`; check_val ; AG=$VAL
VAL=`echo $LINE | awk '{print $8}'`; check_val ; AH=$VAL
VAL=`echo $LINE | awk '{print $9}'`; check_val ; AI=$VAL
#
LINE=`cat puzzle | head -2 | tail -1`
VAL=`echo $LINE | awk '{print $1}'`; check_val ; BA=$VAL
VAL=`echo $LINE | awk '{print $2}'`; check_val ; BB=$VAL
VAL=`echo $LINE | awk '{print $3}'`; check_val ; BC=$VAL
VAL=`echo $LINE | awk '{print $4}'`; check_val ; BD=$VAL
VAL=`echo $LINE | awk '{print $5}'`; check_val ; BE=$VAL
VAL=`echo $LINE | awk '{print $6}'`; check_val ; BF=$VAL
VAL=`echo $LINE | awk '{print $7}'`; check_val ; BG=$VAL
VAL=`echo $LINE | awk '{print $8}'`; check_val ; BH=$VAL
VAL=`echo $LINE | awk '{print $9}'`; check_val ; BI=$VAL
#
LINE=`cat puzzle | head -3 | tail -1`
VAL=`echo $LINE | awk '{print $1}'`; check_val ; CA=$VAL
VAL=`echo $LINE | awk '{print $2}'`; check_val ; CB=$VAL
VAL=`echo $LINE | awk '{print $3}'`; check_val ; CC=$VAL
VAL=`echo $LINE | awk '{print $4}'`; check_val ; CD=$VAL
VAL=`echo $LINE | awk '{print $5}'`; check_val ; CE=$VAL
VAL=`echo $LINE | awk '{print $6}'`; check_val ; CF=$VAL
VAL=`echo $LINE | awk '{print $7}'`; check_val ; CG=$VAL
VAL=`echo $LINE | awk '{print $8}'`; check_val ; CH=$VAL
VAL=`echo $LINE | awk '{print $9}'`; check_val ; CI=$VAL
#
LINE=`cat puzzle | head -4 | tail -1`
VAL=`echo $LINE | awk '{print $1}'`; check_val ; DA=$VAL
VAL=`echo $LINE | awk '{print $2}'`; check_val ; DB=$VAL
VAL=`echo $LINE | awk '{print $3}'`; check_val ; DC=$VAL
VAL=`echo $LINE | awk '{print $4}'`; check_val ; DD=$VAL
VAL=`echo $LINE | awk '{print $5}'`; check_val ; DE=$VAL
VAL=`echo $LINE | awk '{print $6}'`; check_val ; DF=$VAL
VAL=`echo $LINE | awk '{print $7}'`; check_val ; DG=$VAL
VAL=`echo $LINE | awk '{print $8}'`; check_val ; DH=$VAL
VAL=`echo $LINE | awk '{print $9}'`; check_val ; DI=$VAL
#
LINE=`cat puzzle | head -5 | tail -1`
VAL=`echo $LINE | awk '{print $1}'`; check_val ; EA=$VAL
VAL=`echo $LINE | awk '{print $2}'`; check_val ; EB=$VAL
VAL=`echo $LINE | awk '{print $3}'`; check_val ; EC=$VAL
VAL=`echo $LINE | awk '{print $4}'`; check_val ; ED=$VAL
VAL=`echo $LINE | awk '{print $5}'`; check_val ; EE=$VAL
VAL=`echo $LINE | awk '{print $6}'`; check_val ; EF=$VAL
VAL=`echo $LINE | awk '{print $7}'`; check_val ; EG=$VAL
VAL=`echo $LINE | awk '{print $8}'`; check_val ; EH=$VAL
VAL=`echo $LINE | awk '{print $9}'`; check_val ; EI=$VAL
#
LINE=`cat puzzle | head -6 | tail -1`
VAL=`echo $LINE | awk '{print $1}'`; check_val ; FA=$VAL
VAL=`echo $LINE | awk '{print $2}'`; check_val ; FB=$VAL
VAL=`echo $LINE | awk '{print $3}'`; check_val ; FC=$VAL
VAL=`echo $LINE | awk '{print $4}'`; check_val ; FD=$VAL
VAL=`echo $LINE | awk '{print $5}'`; check_val ; FE=$VAL
VAL=`echo $LINE | awk '{print $6}'`; check_val ; FF=$VAL
VAL=`echo $LINE | awk '{print $7}'`; check_val ; FG=$VAL
VAL=`echo $LINE | awk '{print $8}'`; check_val ; FH=$VAL
VAL=`echo $LINE | awk '{print $9}'`; check_val ; FI=$VAL
#
LINE=`cat puzzle | head -7 | tail -1`
VAL=`echo $LINE | awk '{print $1}'`; check_val ; GA=$VAL
VAL=`echo $LINE | awk '{print $2}'`; check_val ; GB=$VAL
VAL=`echo $LINE | awk '{print $3}'`; check_val ; GC=$VAL
VAL=`echo $LINE | awk '{print $4}'`; check_val ; GD=$VAL
VAL=`echo $LINE | awk '{print $5}'`; check_val ; GE=$VAL
VAL=`echo $LINE | awk '{print $6}'`; check_val ; GF=$VAL
VAL=`echo $LINE | awk '{print $7}'`; check_val ; GG=$VAL
VAL=`echo $LINE | awk '{print $8}'`; check_val ; GH=$VAL
VAL=`echo $LINE | awk '{print $9}'`; check_val ; GI=$VAL
#
LINE=`cat puzzle | head -8 | tail -1`
VAL=`echo $LINE | awk '{print $1}'`; check_val ; HA=$VAL
VAL=`echo $LINE | awk '{print $2}'`; check_val ; HB=$VAL
VAL=`echo $LINE | awk '{print $3}'`; check_val ; HC=$VAL
VAL=`echo $LINE | awk '{print $4}'`; check_val ; HD=$VAL
VAL=`echo $LINE | awk '{print $5}'`; check_val ; HE=$VAL
VAL=`echo $LINE | awk '{print $6}'`; check_val ; HF=$VAL
VAL=`echo $LINE | awk '{print $7}'`; check_val ; HG=$VAL
VAL=`echo $LINE | awk '{print $8}'`; check_val ; HH=$VAL
VAL=`echo $LINE | awk '{print $9}'`; check_val ; HI=$VAL
#
LINE=`cat puzzle | tail -1`
VAL=`echo $LINE | awk '{print $1}'`; check_val ; IA=$VAL
VAL=`echo $LINE | awk '{print $2}'`; check_val ; IB=$VAL
VAL=`echo $LINE | awk '{print $3}'`; check_val ; IC=$VAL
VAL=`echo $LINE | awk '{print $4}'`; check_val ; ID=$VAL
VAL=`echo $LINE | awk '{print $5}'`; check_val ; IE=$VAL
VAL=`echo $LINE | awk '{print $6}'`; check_val ; IF=$VAL
VAL=`echo $LINE | awk '{print $7}'`; check_val ; IG=$VAL
VAL=`echo $LINE | awk '{print $8}'`; check_val ; IH=$VAL
VAL=`echo $LINE | awk '{print $9}'`; check_val ; II=$VAL
#----------------------------------------------------------------------------
#
#	check set
#
#----------------------------------------------------------------------------
function check_set
{
	SOLVED=""

	VAL=$AVAL; check_solved; VAL=$BVAL; check_solved
	VAL=$CVAL; check_solved; VAL=$DVAL; check_solved
	VAL=$EVAL; check_solved; VAL=$FVAL; check_solved
	VAL=$GVAL; check_solved; VAL=$HVAL; check_solved
	VAL=$IVAL; check_solved

	VAL=$AVAL; remove_solved; AVAL=$VAL
	VAL=$BVAL; remove_solved; BVAL=$VAL
	VAL=$CVAL; remove_solved; CVAL=$VAL
	VAL=$DVAL; remove_solved; DVAL=$VAL
	VAL=$EVAL; remove_solved; EVAL=$VAL
	VAL=$FVAL; remove_solved; FVAL=$VAL
	VAL=$GVAL; remove_solved; GVAL=$VAL
	VAL=$HVAL; remove_solved; HVAL=$VAL
	VAL=$IVAL; remove_solved; IVAL=$VAL
}
#----------------------------------------------------------------------------
#
#	check solved (wc -m is off by 1)
#
#----------------------------------------------------------------------------
function check_solved
{
	if [ `echo $VAL | wc -m` -eq "2" ]
	then
		SOLVED="$SOLVED $VAL"
	fi
}
#----------------------------------------------------------------------------
#
#	remove solved
#
#----------------------------------------------------------------------------
function remove_solved
{
	if [ `echo $VAL | wc -m` -ne "2" ]
	then
		for NUM in $SOLVED
		do
			VAL=`echo $VAL | sed "s/$NUM//"`
		done
	fi
}
#----------------------------------------------------------------------------
#
#	check valid
#
#----------------------------------------------------------------------------
function check_valid
{
	CHK=""
	for VAL in $AVAL $BVAL $CVAL $DVAL $EVAL $FVAL $GVAL $HVAL $IVAL
	do
		if [ `echo $VAL | wc -m` -eq "2" ]
		then
			CHK="$CHK $VAL"
		fi
	done
	for N in 1 2 3 4 5 6 7 8 9
	do
		if [[ `echo $CHK | grep -c $N` -ne "1" ]]
		then
			echo No - $AVAL $BVAL $CVAL $DVAL $EVAL $FVAL $GVAL $HVAL $IVAL >> valid
		fi
	done
}
#----------------------------------------------------------------------------
#
#	find doubles
#
#----------------------------------------------------------------------------
function find_doubles
{
	DOUBLE=""
	for VAL in $AVAL $BVAL $CVAL $DVAL $EVAL $FVAL $GVAL $HVAL $IVAL
	do
		if [ `echo $VAL | wc -m` -eq "3" ]
		then
			DOUBLE="$DOUBLE $VAL"
		fi
	done
	for D in $DOUBLE
	do
		TOTVAL=0
		for VAL in $AVAL $BVAL $CVAL $DVAL $EVAL $FVAL $GVAL $HVAL $IVAL
		do
			if [ $VAL = $D ]
			then
				let TOTVAL=TOTVAL+1
			fi
		done
		if [ $TOTVAL -eq "2" ]
		then
			T=`echo $D | cut -c1`
			S=`echo $D | cut -c2`
			if [ $AVAL != $D ]
			then
				AVAL=`echo $AVAL | sed "s/$T//" | sed "s/$S//"`
			fi
			if [ $BVAL != $D ]
			then
				BVAL=`echo $BVAL | sed "s/$T//" | sed "s/$S//"`
			fi
			if [ $CVAL != $D ]
			then
				CVAL=`echo $CVAL | sed "s/$T//" | sed "s/$S//"`
			fi
			if [ $DVAL != $D ]
			then
				DVAL=`echo $DVAL | sed "s/$T//" | sed "s/$S//"`
			fi
			if [ $EVAL != $D ]
			then
				EVAL=`echo $EVAL | sed "s/$T//" | sed "s/$S//"`
			fi
			if [ $FVAL != $D ]
			then
				FVAL=`echo $FVAL | sed "s/$T//" | sed "s/$S//"`
			fi
			if [ $GVAL != $D ]
			then
				GVAL=`echo $GVAL | sed "s/$T//" | sed "s/$S//"`
			fi
			if [ $HVAL != $D ]
			then
				HVAL=`echo $HVAL | sed "s/$T//" | sed "s/$S//"`
			fi
			if [ $IVAL != $D ]
			then
				IVAL=`echo $IVAL | sed "s/$T//" | sed "s/$S//"`
			fi
		fi
	done
}



#----------------------------------------------------------------------------
#
#	check unique (wc -m is off by 1)
#
#----------------------------------------------------------------------------
function check_unique
{
	UNIQUE=""
	for NUM in 1 2 3 4 5 6 7 8 9
	do
		NUMTOT=0
		for VAL in $AVAL $BVAL $CVAL $DVAL $EVAL $FVAL $GVAL $HVAL $IVAL
		do
			TOT=`echo $VAL | grep -c $NUM`
			let NUMTOT=$NUMTOT+$TOT
		done
		if [ $NUMTOT -eq "1" ]
		then
			UNIQUE="$UNIQUE $NUM"
		fi
	done
	for U in $UNIQUE
	do
		if [ `echo $AVAL | grep -c $U` -gt "0" ]
		then
			AVAL=$U
		fi
		if [ `echo $BVAL | grep -c $U` -gt "0" ]
		then
			BVAL=$U
		fi
		if [ `echo $CVAL | grep -c $U` -gt "0" ]
		then
			CVAL=$U
		fi
		if [ `echo $DVAL | grep -c $U` -gt "0" ]
		then
			DVAL=$U
		fi
		if [ `echo $EVAL | grep -c $U` -gt "0" ]
		then
			EVAL=$U
		fi
		if [ `echo $FVAL | grep -c $U` -gt "0" ]
		then
			FVAL=$U
		fi
		if [ `echo $GVAL | grep -c $U` -gt "0" ]
		then
			GVAL=$U
		fi
		if [ `echo $HVAL | grep -c $U` -gt "0" ]
		then
			HVAL=$U
		fi
		if [ `echo $IVAL | grep -c $U` -gt "0" ]
		then
			IVAL=$U
		fi
	done
}

















#----------------------------------------------------------------------------
#
#	get rows
#
#----------------------------------------------------------------------------
function get_rows
{
	if [ $ROW -eq "1" ]
	then
		AVAL=$AA; BVAL=$AB; CVAL=$AC; DVAL=$AD; EVAL=$AE; FVAL=$AF
		GVAL=$AG; HVAL=$AH; IVAL=$AI;
	fi
	if [ $ROW -eq "2" ]
	then
		AVAL=$BA; BVAL=$BB; CVAL=$BC; DVAL=$BD; EVAL=$BE; FVAL=$BF
		GVAL=$BG; HVAL=$BH; IVAL=$BI;
	fi
	if [ $ROW -eq "3" ]
	then
		AVAL=$CA; BVAL=$CB; CVAL=$CC; DVAL=$CD; EVAL=$CE; FVAL=$CF
		GVAL=$CG; HVAL=$CH; IVAL=$CI;
	fi
	if [ $ROW -eq "4" ]
	then
		AVAL=$DA; BVAL=$DB; CVAL=$DC; DVAL=$DD; EVAL=$DE; FVAL=$DF
		GVAL=$DG; HVAL=$DH; IVAL=$DI;
	fi
	if [ $ROW -eq "5" ]
	then
		AVAL=$EA; BVAL=$EB; CVAL=$EC; DVAL=$ED; EVAL=$EE; FVAL=$EF
		GVAL=$EG; HVAL=$EH; IVAL=$EI;
	fi
	if [ $ROW -eq "6" ]
	then
		AVAL=$FA; BVAL=$FB; CVAL=$FC; DVAL=$FD; EVAL=$FE; FVAL=$FF
		GVAL=$FG; HVAL=$FH; IVAL=$FI;
	fi
	if [ $ROW -eq "7" ]
	then
		AVAL=$GA; BVAL=$GB; CVAL=$GC; DVAL=$GD; EVAL=$GE; FVAL=$GF
		GVAL=$GG; HVAL=$GH; IVAL=$GI;
	fi
	if [ $ROW -eq "8" ]
	then
		AVAL=$HA; BVAL=$HB; CVAL=$HC; DVAL=$HD; EVAL=$HE; FVAL=$HF
		GVAL=$HG; HVAL=$HH; IVAL=$HI;
	fi
	if [ $ROW -eq "9" ]
	then
		AVAL=$IA; BVAL=$IB; CVAL=$IC; DVAL=$ID; EVAL=$IE; FVAL=$IF
		GVAL=$IG; HVAL=$IH; IVAL=$II;
	fi
}
#----------------------------------------------------------------------------
#
#	put rows
#
#----------------------------------------------------------------------------
function put_rows
{
	if [ $ROW -eq "1" ]
	then
		AA=$AVAL; AB=$BVAL; AC=$CVAL; AD=$DVAL; AE=$EVAL; AF=$FVAL
		AG=$GVAL; AH=$HVAL; AI=$IVAL
	fi
	if [ $ROW -eq "2" ]
	then
		BA=$AVAL; BB=$BVAL; BC=$CVAL; BD=$DVAL; BE=$EVAL; BF=$FVAL
		BG=$GVAL; BH=$HVAL; BI=$IVAL
	fi
	if [ $ROW -eq "3" ]
	then
		CA=$AVAL; CB=$BVAL; CC=$CVAL; CD=$DVAL; CE=$EVAL; CF=$FVAL
		CG=$GVAL; CH=$HVAL; CI=$IVAL
	fi
	if [ $ROW -eq "4" ]
	then
		DA=$AVAL; DB=$BVAL; DC=$CVAL; DD=$DVAL; DE=$EVAL; DF=$FVAL
		DG=$GVAL; DH=$HVAL; DI=$IVAL
	fi
	if [ $ROW -eq "5" ]
	then
		EA=$AVAL; EB=$BVAL; EC=$CVAL; ED=$DVAL; EE=$EVAL; EF=$FVAL
		EG=$GVAL; EH=$HVAL; EI=$IVAL
	fi
	if [ $ROW -eq "6" ]
	then
		FA=$AVAL; FB=$BVAL; FC=$CVAL; FD=$DVAL; FE=$EVAL; FF=$FVAL
		FG=$GVAL; FH=$HVAL; FI=$IVAL
	fi
	if [ $ROW -eq "7" ]
	then
		GA=$AVAL; GB=$BVAL; GC=$CVAL; GD=$DVAL; GE=$EVAL; GF=$FVAL
		GG=$GVAL; GH=$HVAL; GI=$IVAL
	fi
	if [ $ROW -eq "8" ]
	then
		HA=$AVAL; HB=$BVAL; HC=$CVAL; HD=$DVAL; HE=$EVAL; HF=$FVAL
		HG=$GVAL; HH=$HVAL; HI=$IVAL
	fi
	if [ $ROW -eq "9" ]
	then
		IA=$AVAL; IB=$BVAL; IC=$CVAL; ID=$DVAL; IE=$EVAL; IF=$FVAL
		IG=$GVAL; IH=$HVAL; II=$IVAL
	fi
}
#----------------------------------------------------------------------------
#
#	check rows set
#
#----------------------------------------------------------------------------
function check_rows_set
{
	for ROW in 1 2 3 4 5 6 7 8 9
	do
		get_rows
		check_set
		put_rows
	done
}
#----------------------------------------------------------------------------
#
#	check rows unique
#
#----------------------------------------------------------------------------
function check_rows_unique
{
	for ROW in 1 2 3 4 5 6 7 8 9
	do
		get_rows
		check_unique
		put_rows
	done
}
#----------------------------------------------------------------------------
#
#	check rows doubles
#
#----------------------------------------------------------------------------
function check_rows_doubles
{
	for ROW in 1 2 3 4 5 6 7 8 9
	do
		get_rows
		find_doubles
		put_rows
	done
}
#----------------------------------------------------------------------------
#
#	check rows valid
#
#----------------------------------------------------------------------------
function check_rows_valid
{
	for ROW in 1 2 3 4 5 6 7 8 9
	do
		get_rows
		check_valid
	done
}
#----------------------------------------------------------------------------
#
#	get columns
#
#----------------------------------------------------------------------------
function get_columns
{
	if [ $COLUMN -eq "1" ]
	then
		AVAL=$AA; BVAL=$BA; CVAL=$CA; DVAL=$DA; EVAL=$EA; FVAL=$FA
		GVAL=$GA; HVAL=$HA; IVAL=$IA;
	fi
	if [ $COLUMN -eq "2" ]
	then
		AVAL=$AB; BVAL=$BB; CVAL=$CB; DVAL=$DB; EVAL=$EB; FVAL=$FB
		GVAL=$GB; HVAL=$HB; IVAL=$IB;
	fi
	if [ $COLUMN -eq "3" ]
	then
		AVAL=$AC; BVAL=$BC; CVAL=$CC; DVAL=$DC; EVAL=$EC; FVAL=$FC
		GVAL=$GC; HVAL=$HC; IVAL=$IC;
	fi
	if [ $COLUMN -eq "4" ]
	then
		AVAL=$AD; BVAL=$BD; CVAL=$CD; DVAL=$DD; EVAL=$ED; FVAL=$FD
		GVAL=$GD; HVAL=$HD; IVAL=$ID;
	fi
	if [ $COLUMN -eq "5" ]
	then
		AVAL=$AE; BVAL=$BE; CVAL=$CE; DVAL=$DE; EVAL=$EE; FVAL=$FE
		GVAL=$GE; HVAL=$HE; IVAL=$IE;
	fi
	if [ $COLUMN -eq "6" ]
	then
		AVAL=$AF; BVAL=$BF; CVAL=$CF; DVAL=$DF; EVAL=$EF; FVAL=$FF
		GVAL=$GF; HVAL=$HF; IVAL=$IF;
	fi
	if [ $COLUMN -eq "7" ]
	then
		AVAL=$AG; BVAL=$BG; CVAL=$CG; DVAL=$DG; EVAL=$EG; FVAL=$FG
		GVAL=$GG; HVAL=$HG; IVAL=$IG;
	fi
	if [ $COLUMN -eq "8" ]
	then
		AVAL=$AH; BVAL=$BH; CVAL=$CH; DVAL=$DH; EVAL=$EH; FVAL=$FH
		GVAL=$GH; HVAL=$HH; IVAL=$IH;
	fi
	if [ $COLUMN -eq "9" ]
	then
		AVAL=$AI; BVAL=$BI; CVAL=$CI; DVAL=$DI; EVAL=$EI; FVAL=$FI
		GVAL=$GI; HVAL=$HI; IVAL=$II;
	fi
}
#----------------------------------------------------------------------------
#
#	put columns
#
#----------------------------------------------------------------------------
function put_columns
{
	if [ $COLUMN -eq "1" ]
	then
		AA=$AVAL; BA=$BVAL; CA=$CVAL; DA=$DVAL; EA=$EVAL; FA=$FVAL
		GA=$GVAL; HA=$HVAL; IA=$IVAL
	fi
	if [ $COLUMN -eq "2" ]
	then
		AB=$AVAL; BB=$BVAL; CB=$CVAL; DB=$DVAL; EB=$EVAL; FB=$FVAL
		GB=$GVAL; HB=$HVAL; IB=$IVAL
	fi
	if [ $COLUMN -eq "3" ]
	then
		AC=$AVAL; BC=$BVAL; CC=$CVAL; DC=$DVAL; EC=$EVAL; FC=$FVAL
		GC=$GVAL; HC=$HVAL; IC=$IVAL
	fi
	if [ $COLUMN -eq "4" ]
	then
		AD=$AVAL; BD=$BVAL; CD=$CVAL; DD=$DVAL; ED=$EVAL; FD=$FVAL
		GD=$GVAL; HD=$HVAL; ID=$IVAL
	fi
	if [ $COLUMN -eq "5" ]
	then
		AE=$AVAL; BE=$BVAL; CE=$CVAL; DE=$DVAL; EE=$EVAL; FE=$FVAL
		GE=$GVAL; HE=$HVAL; IE=$IVAL
	fi
	if [ $COLUMN -eq "6" ]
	then
		AF=$AVAL; BF=$BVAL; CF=$CVAL; DF=$DVAL; EF=$EVAL; FF=$FVAL
		GF=$GVAL; HF=$HVAL; IF=$IVAL
	fi
	if [ $COLUMN -eq "7" ]
	then
		AG=$AVAL; BG=$BVAL; CG=$CVAL; DG=$DVAL; EG=$EVAL; FG=$FVAL
		GG=$GVAL; HG=$HVAL; IG=$IVAL
	fi
	if [ $COLUMN -eq "8" ]
	then
		AH=$AVAL; BH=$BVAL; CH=$CVAL; DH=$DVAL; EH=$EVAL; FH=$FVAL
		GH=$GVAL; HH=$HVAL; IH=$IVAL
	fi
	if [ $COLUMN -eq "9" ]
	then
		AI=$AVAL; BI=$BVAL; CI=$CVAL; DI=$DVAL; EI=$EVAL; FI=$FVAL
		GI=$GVAL; HI=$HVAL; II=$IVAL
	fi
}
#----------------------------------------------------------------------------
#
#	check columns set
#
#----------------------------------------------------------------------------
function check_columns_set
{
	for COLUMN in 1 2 3 4 5 6 7 8 9
	do
		get_columns
		check_set
		put_columns
	done
}
#----------------------------------------------------------------------------
#
#	check columns unique
#
#----------------------------------------------------------------------------
function check_columns_unique
{
	for COLUMN in 1 2 3 4 5 6 7 8 9
	do
		get_columns
		check_unique
		put_columns
	done
}
#----------------------------------------------------------------------------
#
#	check columns doubles
#
#----------------------------------------------------------------------------
function check_columns_doubles
{
	for COLUMN in 1 2 3 4 5 6 7 8 9
	do
		get_columns
		find_doubles
		put_columns
	done
}
#----------------------------------------------------------------------------
#
#	check columns valid
#
#----------------------------------------------------------------------------
function check_columns_valid
{
	for COLUMN in 1 2 3 4 5 6 7 8 9
	do
		get_columns
		check_valid
	done
}
#----------------------------------------------------------------------------
#
#	get cubes
#
#----------------------------------------------------------------------------
function get_cubes
{
	if [ $CUBE -eq "1" ]
	then
		AVAL=$AA; BVAL=$AB; CVAL=$AC; DVAL=$BA; EVAL=$BB; FVAL=$BC
		GVAL=$CA; HVAL=$CB; IVAL=$CC
	fi
	if [ $CUBE -eq "2" ]
	then
		AVAL=$AD; BVAL=$AE; CVAL=$AF; DVAL=$BD; EVAL=$BE; FVAL=$BF
		GVAL=$CD; HVAL=$CE; IVAL=$CF
	fi
	if [ $CUBE -eq "3" ]
	then
		AVAL=$AG; BVAL=$AH; CVAL=$AI; DVAL=$BG; EVAL=$BH; FVAL=$BI
		GVAL=$CG; HVAL=$CH; IVAL=$CI
	fi
	if [ $CUBE -eq "4" ]
	then
		AVAL=$DA; BVAL=$DB; CVAL=$DC; DVAL=$EA; EVAL=$EB; FVAL=$EC
		GVAL=$FA; HVAL=$FB; IVAL=$FC
	fi
	if [ $CUBE -eq "5" ]
	then
		AVAL=$DD; BVAL=$DE; CVAL=$DF; DVAL=$ED; EVAL=$EE; FVAL=$EF
		GVAL=$FD; HVAL=$FE; IVAL=$FF
	fi
	if [ $CUBE -eq "6" ]
	then
		AVAL=$DG; BVAL=$DH; CVAL=$DI; DVAL=$EG; EVAL=$EH; FVAL=$EI
		GVAL=$FG; HVAL=$FH; IVAL=$FI
	fi
	if [ $CUBE -eq "7" ]
	then
		AVAL=$GA; BVAL=$GB; CVAL=$GC; DVAL=$HA; EVAL=$HB; FVAL=$HC
		GVAL=$IA; HVAL=$IB; IVAL=$IC
	fi
	if [ $CUBE -eq "8" ]
	then
		AVAL=$GD; BVAL=$GE; CVAL=$GF; DVAL=$HD; EVAL=$HE; FVAL=$HF
		GVAL=$ID; HVAL=$IE; IVAL=$IF
	fi
	if [ $CUBE -eq "9" ]
	then
		AVAL=$GG; BVAL=$GH; CVAL=$GI; DVAL=$HG; EVAL=$HH; FVAL=$HI
		GVAL=$IG; HVAL=$IH; IVAL=$II
	fi
}
#----------------------------------------------------------------------------
#
#	put cubes
#
#----------------------------------------------------------------------------
function put_cubes
{
	if [ $CUBE -eq "1" ]
	then
		AA=$AVAL; AB=$BVAL; AC=$CVAL; BA=$DVAL; BB=$EVAL; BC=$FVAL
		CA=$GVAL; CB=$HVAL; CC=$IVAL
	fi
	if [ $CUBE -eq "2" ]
	then
		AD=$AVAL; AE=$BVAL; AF=$CVAL; BD=$DVAL; BE=$EVAL; BF=$FVAL
		CD=$GVAL; CE=$HVAL; CF=$IVAL
	fi
	if [ $CUBE -eq "3" ]
	then
		AG=$AVAL; AH=$BVAL; AI=$CVAL; BG=$DVAL; BH=$EVAL; BI=$FVAL
		CG=$GVAL; CH=$HVAL; CI=$IVAL
	fi
	if [ $CUBE -eq "4" ]
	then
		DA=$AVAL; DB=$BVAL; DC=$CVAL; EA=$DVAL; EB=$EVAL; EC=$FVAL
		FA=$GVAL; FB=$HVAL; FC=$IVAL
	fi
	if [ $CUBE -eq "5" ]
	then
		DD=$AVAL; DE=$BVAL; DF=$CVAL; ED=$DVAL; EE=$EVAL; EF=$FVAL
		FD=$GVAL; FE=$HVAL; FF=$IVAL
	fi
	if [ $CUBE -eq "6" ]
	then
		DG=$AVAL; DH=$BVAL; DI=$CVAL; EG=$DVAL; EH=$EVAL; EI=$FVAL
		FG=$GVAL; FH=$HVAL; FI=$IVAL
	fi
	if [ $CUBE -eq "7" ]
	then
		GA=$AVAL; GB=$BVAL; GC=$CVAL; HA=$DVAL; HB=$EVAL; HC=$FVAL
		IA=$GVAL; IB=$HVAL; IC=$IVAL
	fi
	if [ $CUBE -eq "8" ]
	then
		GD=$AVAL; GE=$BVAL; GF=$CVAL; HD=$DVAL; HE=$EVAL; HF=$FVAL
		ID=$GVAL; IE=$HVAL; IF=$IVAL
	fi
	if [ $CUBE -eq "9" ]
	then
		GG=$AVAL; GH=$BVAL; GI=$CVAL; HG=$DVAL; HH=$EVAL; HI=$FVAL
		IG=$GVAL; IH=$HVAL; II=$IVAL
	fi
}
#----------------------------------------------------------------------------
#
#	check cubes set
#
#----------------------------------------------------------------------------
function check_cubes_set
{
	for CUBE in 1 2 3 4 5 6 7 8 9
	do
		get_cubes
		check_set
		put_cubes
	done
}
#----------------------------------------------------------------------------
#
#	check cubes unique
#
#----------------------------------------------------------------------------
function check_cubes_unique
{
	for CUBE in 1 2 3 4 5 6 7 8 9
	do
		get_cubes
		check_unique
		put_cubes
	done
}
#----------------------------------------------------------------------------
#
#	check cubes doubles
#
#----------------------------------------------------------------------------
function check_cubes_doubles
{
	for CUBE in 1 2 3 4 5 6 7 8 9
	do
		get_cubes
		find_doubles
		put_cubes
	done
}
#----------------------------------------------------------------------------
#
#	check cubes valid
#
#----------------------------------------------------------------------------
function check_cubes_valid
{
	for CUBE in 1 2 3 4 5 6 7 8 9
	do
		get_cubes
		check_valid
	done
}
#----------------------------------------------------------------------------
#
#	print matrix
#
#----------------------------------------------------------------------------
function print_matrix
{
echo "------------------------------------------------------------------------------"
printf "%-8s %-8s %-8s|%-8s %-8s %-8s|%-8s %-8s %-8s\n" $AA $AB $AC $AD $AE $AF $AG $AH $AI
printf "%-8s %-8s %-8s|%-8s %-8s %-8s|%-8s %-8s %-8s\n" $BA $BB $BC $BD $BE $BF $BG $BH $BI
printf "%-8s %-8s %-8s|%-8s %-8s %-8s|%-8s %-8s %-8s\n" $CA $CB $CC $CD $CE $CF $CG $CH $CI
echo "------------------------------------------------------------------------------"
printf "%-8s %-8s %-8s|%-8s %-8s %-8s|%-8s %-8s %-8s\n" $DA $DB $DC $DD $DE $DF $DG $DH $DI
printf "%-8s %-8s %-8s|%-8s %-8s %-8s|%-8s %-8s %-8s\n" $EA $EB $EC $ED $EE $EF $EG $EH $EI
printf "%-8s %-8s %-8s|%-8s %-8s %-8s|%-8s %-8s %-8s\n" $FA $FB $FC $FD $FE $FF $FG $FH $FI
echo "------------------------------------------------------------------------------"
printf "%-8s %-8s %-8s|%-8s %-8s %-8s|%-8s %-8s %-8s\n" $GA $GB $GC $GD $GE $GF $GG $GH $GI
printf "%-8s %-8s %-8s|%-8s %-8s %-8s|%-8s %-8s %-8s\n" $HA $HB $HC $HD $HE $HF $HG $HH $HI
printf "%-8s %-8s %-8s|%-8s %-8s %-8s|%-8s %-8s %-8s\n" $IA $IB $IC $ID $IE $IF $IG $IH $II
echo "------------------------------------------------------------------------------"
echo
echo "$AA $AB $AC $AD $AE $AF $AG $AH $AI
$BA $BB $BC $BD $BE $BF $BG $BH $BI
$CA $CB $CC $CD $CE $CF $CG $CH $CI
$DA $DB $DC $DD $DE $DF $DG $DH $DI
$EA $EB $EC $ED $EE $EF $EG $EH $EI
$FA $FB $FC $FD $FE $FF $FG $FH $FI
$GA $GB $GC $GD $GE $GF $GG $GH $GI
$HA $HB $HC $HD $HE $HF $HG $HH $HI
$IA $IB $IC $ID $IE $IF $IG $IH $II" > solution
}
#----------------------------------------------------------------------------
#
#	run set
#
#----------------------------------------------------------------------------
function run_set
{
	check_rows_set
	check_columns_set
	check_cubes_set
}
#----------------------------------------------------------------------------
#
#	run unique
#
#----------------------------------------------------------------------------
function run_unique
{
	check_rows_unique
	check_columns_unique
	check_cubes_unique
}
#----------------------------------------------------------------------------
#
#	run doubles
#
#----------------------------------------------------------------------------
function run_doubles
{
	check_rows_doubles
	check_columns_doubles
	check_cubes_doubles
}
#----------------------------------------------------------------------------
#
#	run valid
#
#----------------------------------------------------------------------------
function run_valid
{
	check_rows_valid
	check_columns_valid
	check_cubes_valid
}
#----------------------------------------------------------------------------
#
#	Main
#
#----------------------------------------------------------------------------
while true
do
	> valid
	cat solution > before
	run_set
	run_unique
	run_doubles
	run_valid
#	For debugging
#	print_matrix  
	cat solution > after
	diff before after >/dev/null 2>&1
	if [ $? -eq "0" ]
	then
		if [ -s valid ]
		then
			echo Solution is invalid
		fi
		print_matrix
		rm -f after before valid
		exit
	fi
done

