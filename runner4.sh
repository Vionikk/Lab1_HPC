#!/usr/bin/bash

#PBS -l nodes=1:ppn=1
#PBS -l walltime=0:02:00
#PBS -N Shelin_integral
#PBS -t 1-22

cd $PBS_O_WORKDIR
line=`sed -n "${PBS_ARRAYID}p" solv.inp`
result=`~/Lab1_HPC/integral $line | tail -n 1 | cut -f2 -d\ `
echo $result > ~/Lab1_HPC/Lab1/solvOut_${PBS_ARRAYID}.out 