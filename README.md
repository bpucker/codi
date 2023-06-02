# Collection of color differences between plant species


## Rename reads in FASTQ file for Trinity assembly ##
Reads in a FASTQ file downloaded from the SRA are renamed to enable a Trinity assembly that requires a specific read header format.

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

`--fwin` specifies a forward read input FASTQ file.

`--rvin` specifies a reverse read input FASTQ file.

`--fwout` specifies a forward read output FASTQ file.

`--rvout` specifies a reverse read output FASTQ file.


## References
This repository.
