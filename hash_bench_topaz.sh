#!/bin/bash

topaz="$HOME/src/topazos/topaz/bin/topaz"

for i in `seq 5 +5 30`
do
    $topaz hash_bench.rb $i
done | tee topaz_bench

for i in `seq 5 +5 30`
do
    $topaz hash_bench_str.rb $i
done | tee topaz_bench_str
