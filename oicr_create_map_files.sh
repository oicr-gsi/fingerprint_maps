#!/bin/bash

cd "$(dirname "$0")"

cp headers/oicr_header_hg19_chr map_files/temp_hg19_chr.map
grep -v '^@' map_files/hg19_chr.map >> map_files/temp_hg19_chr.map
mv map_files/temp_hg19_chr.map map_files/oicr_hg19_chr.map

cp headers/oicr_header_hg38_chr map_files/temp_hg38_chr.map
grep -v '^@' map_files/hg38_chr.map >> map_files/temp_hg38_chr.map
mv map_files/temp_hg38_chr.map map_files/oicr_hg38_chr.map
