# GISTIC2 running example

<!-- badges: start -->
  <!-- badges: end -->
  
This is a example script used to run GISTIC2 in VENUS.


## Usage


```bash
./gistic2 -b /home/chenh/prospective-GISTIC/PDAC145/ \
	-seg /home/chenh/prospective-GISTIC/PDAC_CopyWriteR_segment.tsv \
	-refgene /home/chenh/prospective-GISTIC/hg38.UCSC.add_miR.160920.refgene.mat \
	-genegistic 1 -smallmem 0 -rx 0 -broad 1 -brlen 0.7 -conf 0.99 -armpeel 1 -savegene 1 \
	-gcm extreme -v 30 -maxseg 46000 -ta 0.3 -td 0.3 -cap 1.5 -js 4
```
## Note:
*-b* specify the output directory, you need to mkdir it before you run this command.

*-seg* is the segment-level SCNA input; refer to the example to see the format.

*-refgene* is the reference file telling the tool the locations of genes, choose according to how your segment-level data were generated (hg38 or hg19).

*-ta* and *-td* specify the threshold to call SCNA, the default setting is 0.1; however, I found 0.3 is more likely to be true according to the communcation with biologists.

Finally, leave all other parameters as the default setting.

## Output:
*all_data_by_genes.txt* is the gene-level SCNA log2 ratio
*all_thresholded_by_gene.txt* is the gene-level SCNA integer call. -1/1: shallow SCNA; -2/2: deep SCNA

## Contact
Chen Huang (ibphuangchen@gmail.com)
