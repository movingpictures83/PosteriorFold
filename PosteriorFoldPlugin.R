### R code from vignette source 'EBSeq_Vignette.Rnw'

###################################################
### code chunk number 1: EBSeq_Vignette.Rnw:172-173
###################################################
library(EBSeq)

input <- function(inputfile) {
	EBOut <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
	GeneFC=PostFC(EBOut)
	write.csv(GeneFC$PostFC, paste(outputfile,"csv",sep="."))
	saveRDS(GeneFC, paste(outputfile,"rds",sep="."))
}
