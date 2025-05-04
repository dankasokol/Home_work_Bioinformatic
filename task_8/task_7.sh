#!/bin/bash

awk '
BEGIN {
    max_ins_len = 0;
    max_del_len = 0;
    ins_seq = "";
    del_seq = "";
    ins_chr = "";
    del_chr = "";
}
!/^#/ {
    ref = $4;
    alt = $5;
    chr = $1;
    if (length(alt) > length(ref)) {
        len = length(alt) - length(ref);
        if (len > max_ins_len) {
            max_ins_len = len;
            ins_seq = alt;
            ins_chr = chr;
        }
    }
    if (length(ref) > length(alt)) {
        len = length(ref) - length(alt);
        if (len > max_del_len) {
            max_del_len = len;
            del_seq = ref;
            del_chr = chr;
        }
    }
}
END {
    print "Longest insertion:\n" ins_seq;
    print "Longest deletion:\n" del_seq;
}' clinvar_20250429.vcf > fout

