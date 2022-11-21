args = commandArgs(trailingOnly=TRUE)

library(rrBLUP)

load("./hyp.rr.Rdata")
load("./W_control.RData")

path = "./outputs"


source("./Gwas_CoreFunction.R")
gwas_control_func(size1=args[1], size2=args[2])
