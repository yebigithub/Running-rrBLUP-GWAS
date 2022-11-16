args = commandArgs(trailingOnly=TRUE)

library(rrBLUP)

load("./hyp.rr.Rdata")
load("./W_stress.RData")

path = "./outputs"


source("./gwas_function.R")
gwas_stress_func(size1=args[1], size2=args[2])
