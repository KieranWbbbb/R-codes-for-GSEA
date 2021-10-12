################GSEA for motifs##########################

library(readr)

beta<-read.csv("beta.csv")
#Gene names and nonlinear-degrees.

centri_order<-read.csv("centri_order.csv")
#Gene names and the corresponding identifiers in the results of CentriMo.

temp1<-merge(beta,centri_order,by = "Genename")
gene_rank<-data.frame(identifier=as.character(temp1$identifier),rank=as.numeric(temp1$beta))
gene_rank<-gene_rank[order(gene_rank$rank,decreasing = T),]
genes<-as.vector(gene_rank$rank)
names(genes)<-gene_rank$identifier
#Named vector of beta with the identifier of CentriMo.

library(clusterProfiler)

anno_db<-read.gmt("res_CentriMo.gmt")
#"res_CentriMo.gmt" is the self-made gmt in which motifs are seen as gene sets based on CentriMo results.

res_gsea<-GSEA(genes,TERM2GENE = anno_db,
               pvalueCutoff = 0.05, nPerm = 100000)
#The results of GSEA for Fig 4(d) and Table S2.


