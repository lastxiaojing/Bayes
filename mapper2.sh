#!/bin/bash

awk -F '\t' 'BEGIN{
	p0 = 0.7
	p1 = 0.3
}
{
	if(NF >= 3) {
		if($1 == 0) {
			print $1 '\t' $2 '\t' $3 * p0;
		} else {
			print $1 '\t' $2 '\t' $3 * p1;
		}
	}
}'
