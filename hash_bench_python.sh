#!/bin/bash

for i in `seq 5 +5 30`
do
    python hash_bench.py $i
done | tee python_bench

for i in `seq 5 +5 30`
do
    python hash_bench_str.py $i
done | tee python_bench_str


