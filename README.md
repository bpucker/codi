# Collection of color differences between plant species

## Anthocyanin pigmentation loss study collection ##
Please a [collection of studies reporting anthocyanin losses](https://github.com/bpucker/codi/wiki/Anthocyanin-pigmentation-difference-collection) on the respective wiki page. This table is based on AdditionalFile1 described in our publication, but can be extended over time. Please get in touch if you have a study that should be included here.


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

Recinos Marin, F. M. & Pucker, B. (2024). Genetic factors explaining anthocyanin pigmentation differences. bioRxiv 2023.06.05.543820; doi: [10.1101/2023.06.05.543820 ](https://doi.org/10.1101/2023.06.05.543820)
