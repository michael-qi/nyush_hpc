#!/bin/bash

suser=`whoami`
echo $suser
joblist=`squeue -h -u $suser | awk '{print $1}'`

for job in $joblist; do

	ostring=`scontrol show jobid $job | grep "StdErr"`
        outfiles=$(echo $ostring | tr "=" "\n")
	for outfile in $outfiles; 
	do
		if [ "$outfile" != "StdErr" ]; then
			#outfile=`ls | grep  $j b*.out`
			if [ -f $outfile ]; then
        			echo "***** Recent output from $outfile"
        			echo "" 
        			tail $outfile
        			echo ""
        			echo "***** end $outfile"
			else
				echo
				echo -e "\t-------->The job ($job) is not running.<-------"
				echo
			fi
		fi
	done

done
