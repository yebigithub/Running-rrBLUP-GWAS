# Running-rrBLUP-GWAS
Some efficient Rscript and shfile to run rrBLUP GWAS in VT arc.

### Step1: preprocess
[Preprocess.RMD](https://github.com/yebigithub/Running-rrBLUP-GWAS/blob/main/Preprocess.Rmd) 
- preprocess phenotype and genotype data files.
- remove duplicated id.
- match order of id in geno and pheno data.

### Step2: build gwas function
[gwas_function.R](https://github.com/yebigithub/Running-rrBLUP-GWAS/blob/main/gwas_function.R)
- be careful, rrBLUP requires pheno and geno in data.frame format.

### Step3: using function in control and stress group
[rrBLUP_GWAS_control.R](https://github.com/yebigithub/Running-rrBLUP-GWAS/blob/main/rrBLUP_GWAS_control.R)

[rrBLUP_GWAS_stress.R](https://github.com/yebigithub/Running-rrBLUP-GWAS/blob/main/rrBLUP_GWAS_stress.R)

- load corrected phenotype and genotype files.
- using commandArgs to set range of traits.

### Step4: run sh file in vt arc.
[con_1-10.sh](https://github.com/yebigithub/Running-rrBLUP-GWAS/blob/main/con_1-10.sh)
