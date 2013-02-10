#!/bin/bash

for i in `seq 5 +5 30`
do
    ruby hash_bench.rb $i
done | tee ruby_bench

for i in `seq 5 +5 30`
do
    ruby hash_bench_str.rb $i
done | tee ruby_bench_str
