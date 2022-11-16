gwas_control_func = function(size1, size2){
  for (i in size1:size2){
    cat("now is running: ", i, "\n")
    GWAS_test <- GWAS(pheno = cbind.data.frame(hyp_control$NSFTV_Id, hyp_control[,i+2]),
                      geno = W_control,
                      P3D = TRUE,
                      plot = FALSE)
    write.csv(GWAS_test,
              file=paste0("./outputs/rrBLUP_GWAS/control/", colnames(hyp_control)[i+2], ".csv"),
              quote = FALSE,
              row.names = FALSE)
  }
}

gwas_stress_func = function(size1, size2){
  for (i in size1:size2){
    cat("now is running: ", i, "\n")
    GWAS_test <- GWAS(pheno = cbind.data.frame(hyp_stress$NSFTV_Id, hyp_stress[,i+2]), 
                      geno = W_stress, 
                      P3D = TRUE, 
                      plot = FALSE)
    write.csv(GWAS_test, 
              file=paste0("./outputs/rrBLUP_GWAS/stress/", colnames(hyp_stress)[i+2], ".csv"), 
              quote = FALSE, 
              row.names = FALSE)
  }
}