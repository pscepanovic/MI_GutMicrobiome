plink2 \
--bfile MI_HRCimputed_Exome_HLAKIR \
--covar covar.txt \
--glm hide-covar cols=+altfreq \
--maf 0.05 \
--out $TMP \
--pheno pheno.txt \
--pheno-name $TMP \
--remove GWAS_RelativesToRemove.txt 


Rscript microbiomeGWAS_v1.0.R \
-r microbiomeGWAS \
-p MI_HRCimputed_Exome_HLAKIR \
-d beta.txt \
-o . \
-c covar_beta.txt