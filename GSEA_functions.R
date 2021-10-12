################GSEA for functions##########################

library(readr)

beta<-read.csv("beta.csv")
#Gene names and nonlinear-degrees.

temp1<-beta[order(beta$beta,decreasing = T),]
genes<-as.vector(temp1$beta)
names(genes)<-temp1$ORF
#Named vector of beta with ORF.

library(clusterProfiler)

anno_db<-read.gmt("./res_KEGG_yeast.gmt")
#"res_KEGG_yeast.gmt" is the self-made gmt based on KEGG BRITE hierarchy files.

res_gsea_KEGG<-GSEA(genes,TERM2GENE = anno_db,
                    pvalueCutoff = 0.05, nPerm = 100000)
#The results of GSEA is for Fig S9.

anno_db<-read.gmt("./cell_cycle_regulation.gmt")
#"cell_cycle_regulation.gmt" is the self-made gmt containing only two terms negative regulation of cell cycle (GO:0045786) & positive regulation of cell cycle (GO:0045787) based on Gene Ontology (GO)database

res_gsea_cycle<-GSEA(genes,TERM2GENE = anno_db,
                    pvalueCutoff = 0.05, nPerm = 100000)
#The results of GSEA is for Fig 4(c).


