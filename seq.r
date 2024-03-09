if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager", repo="http://cran.us.r-project.org")

BiocManager::install("cleaver")

library("cleaver")

s <- read.csv("Rice_proteins.csv")

sequences <- setNames(s$Sequence, s$From)

c = cleave(sequences, enzym="trypsin", missedCleavages= 0:1)

c

write.table(c[["CAA44001.1"]], file = "./cleaved/globulin_1.csv", sep = " ")
write.table(c[["QJD46727.1"]], file = "./cleaved/globulin_2.csv", sep = " ")
write.table(c[["AAA66495.1"]], file = "./cleaved/tubulin_B.csv", sep = " ")
write.table(c[["AAB92557.1"]], file = "./cleaved/tubulin_G.csv", sep = " ")
write.table(c[["AAG16905.1"]], file = "./cleaved/tubulin_A.csv", sep = " ")
write.table(c[["AAB84298.1"]], file = "./cleaved/in_tubulin.csv", sep = " ")
write.table(c[["CAA38211.1"]], file = "./cleaved/glutelin_1.csv", sep = " ")
write.table(c[["CAA38212.1"]], file = "./cleaved/glutelin_2.csv", sep = " ")
write.table(c[["CAA32706.1"]], file = "./cleaved/preglutelin.csv", sep = " ")
write.table(c[["AGT59178.1"]], file = "./cleaved/in_glutelin.csv", sep = " ")
write.table(c[["AAK53839.1"]], file = "./cleaved/cullin_1.csv", sep = " ")
write.table(c[["AAK53842.1"]], file = "./cleaved/cullin_2.csv", sep = " ")
write.table(c[["BAA36697.1"]], file = "./cleaved/prolamin.csv", sep = " ")
write.table(c[["AAA50318.1"]], file = "./cleaved/in_prolamin_1.csv", sep = " ")
write.table(c[["AAW80678.1"]], file = "./cleaved/in_prolamin_2.csv", sep = " ")
write.table(c[["AAA57044.1"]], file = "./cleaved/cyclophilin_1.csv", sep = " ")
write.table(c[["AAA57045.1"]], file = "./cleaved/cyclophilin_2.csv", sep = " ")
write.table(c[["ABF18676.1"]], file = "./cleaved/in_cyclophilin_A.csv", sep = " ")
write.table(c[["ABF18677.1"]], file = "./cleaved/in_cyclophilin_3B.csv", sep = " ")
write.table(c[["CAA33873.1"]], file = "./cleaved/in_actin_1.csv", sep = " ")
write.table(c[["CAA33871.1"]], file = "./cleaved/in_actin_2.csv", sep = " ")
write.table(c[["CAA33874.1"]], file = "./cleaved/in_actin_3.csv", sep = " ")
write.table(c[["AAA33900.1"]], file = "./cleaved/in_calmodulin.csv", sep = " ")