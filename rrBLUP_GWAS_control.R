args = commandArgs(trailingOnly=TRUE)
library(rrBLUP)

load("./hyp.rr.Rdata")
load("./W_control.RData")

path = "./outputs"


source("./gwas_function.R")
gwas_control_func(size1=args[1], size2=args[2])
