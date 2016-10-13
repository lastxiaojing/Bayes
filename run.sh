#!/bin/bash

# 求出P(B0) P(B1) Sum(B0) Sum(B1)	在这里省略了 

# 求出P(A|B)
cat file | sh -x mapper1.sh | sort -n -k1 -k2 | sh -x reducer1.sh > Pab

# 求出P(B|A) 当然没有除以P(A) 只是为了比较概率大小
cat Pab | sh -x mapper2.sh | sort -n -k1 -k2 | sh -x reducer2.sh > Pba
