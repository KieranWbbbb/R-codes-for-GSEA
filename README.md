# R-codes-for-GSEA
GSEA codes for Heterogeneous recruitment abilities to RNA polymerases generate nonlinear scaling 1 of gene expression with cell volume

###20210823
###Qirun Wang
 
##System requirements: 
Any systems that can run R (3.6.1)
Required packages: readr (1.3.1); clusterProfiler(3.12.0)

##Installation guide: 
No Installation is needed.

##Demo: 
All instructions to run on data are included in the scripts. Please refer to the annotations in them.
The output is an S4 object of R containing GSEA results used in the paper.
All process can be done within 1-5 mins depending on the capablilty of the device.

##Instructions for use: 
See the Demo section.

##Annotations of files: 
#beta.csv:  
nonlinear degrees of genes

#centri_order.csv: 
Gene names and the corresponding identifiers in the results of CentriMo.

#GSEA_motif_res.csv: 
GSEA results of motif analysis.

#motifs_of_every_gene.csv: 
All motifs as well as motifs enriched in GSEA that every gene contains.

#Metascape_res.csv: 
Metascape results of functional analysis.

#res_CentriMo.gmt: 
The self-made gmt in which motifs are seen as gene sets based on CentriMo results.

#res_KEGG_yeast.gmt: 
The self-made gmt based on KEGG BRITE hierarchy files.

#cell_cycle_regulation.gmt: 
"The self-made gmt containing only two terms negative regulation of cell cycle (GO:0045786) & positive regulation of cell cycle (GO:0045787) based on Gene Ontology (GO)database.

#GSEA_functions.R: 
The R script performing function analysis with GSEA.

#GSEA_motif.R: 
The R script performing motif analysis with GSEA.
