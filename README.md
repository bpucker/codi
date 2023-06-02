# Collection of color differences between plant species


## Rename reads in FASTQ file for Trinity assembly ##

```
PE mode:
python2 rename_reads_for_trinity.py --fwin <FILE> --rvin <FILE> --fwout <FILE> --rvout <FILE>
SE mode:
python2 rename_reads_for_trinity.py --fwin <FILE> --fwout <FILE>

Arguments:
--fwin      STR   Forward input FASTQ file
--rvin      STR   Reverse input FASTQ file
--fwout     STR   Forward output FASTQ file
--rvout     STR   Reverse output FASTQ file
```

`--fwin` specifies an input FASTQ file.


## References
This repository.
