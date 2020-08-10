./gistic2 -b /home/chenh/prospective-GISTIC/PDAC145/ \
	-seg /home/chenh/prospective-GISTIC/PDAC_CopyWriteR_segment.tsv \
	-refgene /home/chenh/prospective-GISTIC/hg38.UCSC.add_miR.160920.refgene.mat \
	-genegistic 1 -smallmem 0 -rx 0 -broad 1 -brlen 0.7 -conf 0.99 -armpeel 1 -savegene 1 \
	-gcm extreme -v 30 -maxseg 46000 -ta 0.3 -td 0.3 -cap 1.5 -js 4
