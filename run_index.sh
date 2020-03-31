#!/bin/bash


inpunt_file_path="./trec_disks45/disk45/disk4"
index_file_name="index.ROBUST04.20200331"

nohup sh target/appassembler/bin/IndexCollection -collection TrecCollection -input "$inpunt_file_path" \
 -index "$index_file_name" -generator JsoupGenerator -threads 16 \
 -storePositions -storeDocvectors -storeRawDocs >& log."$index_file_name" &
