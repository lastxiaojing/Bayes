#!/bin/bash

awk -F'\t' 'BEGIN {
	sum1 = 100;
	sum0 = 100;
}
{
	if($1 == 1)	{
		print $1 "\t" $2 "\t" $3 / sum1;
	}
	if($1 == 0) {
		print $1 "\t" $2 "\t" $3 / sum0;
	}
}'
