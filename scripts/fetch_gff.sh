#!/bin/bash

YEASTGFF="4.0.0/GFF/SGD/GFF_SGD_0.gff.gz"
WORMGFF="4.1.0/GFF/WB/GFF_WB_2.gff.gz"
FLYGFF="4.1.0/GFF/FB/GFF_FB_0.gff.gz"
ZEBRAFISHGFF="4.1.0/GFF/ZFIN/GFF_ZFIN_1.gff.gz"
MOUSEGFF="4.1.0/GFF/MGI/GFF_MGI_0.gff.gz"
RATGFF="4.1.0/GFF/RGD/GFF_RGD_1.gff.gz"
HUMANGFF="4.1.0/GFF/HUMAN/GFF_HUMAN_1.gff.gz"

curl -o yeast.gff.gz "https://download.alliancegenome.org/$YEASTGFF"
#curl -o worm.gff.gz  "https://download.alliancegenome.org/$WORMGFF"
#curl -o fly.gff.gz   "https://download.alliancegenome.org/$FLYGFF"
curl -o zebrafish.gff "https://download.alliancegenome.org/$ZEBRAFISHGFF"
#curl -o mouse.gff.gz "https://download.alliancegenome.org/$MOUSEGFF"
curl -o rat.gff.gz   "https://download.alliancegenome.org/$RATGFF"
curl -o human.gff.gz "https://download.alliancegenome.org/$HUMANGFF"

gzip -d yeast.gff.gz
#gzip -d worm.gff.gz
#gzip -d fly.gff.gz
gzip -d zebrafish.gff.gz
#gzip -d mouse.gff.gz
gzip -d rat.gff.gz
gzip -d human.gff.gz
