# Effect of PON (Panel Of Normals) on somatic variant calls for Mutect2 and Strelka

## input data file is like 
`
  sample,filtering,PON,bootstrap,calls
  T103,All,05, 1, 95863
  T103,All,05, 2, 95531
  T103,All,05, 3, 96218
  ...
  T103,filtered,20, 4, 38188
  T103,filtered,20, 5, 37738
  T103,filtered,25, 1, 38548
  T103,filtered,25, 2, 37965
`
- sample: sample name
- filtering: either All or filtered; means that "calls" refers to the number of All or filtered (PASS-ed) calls in the VCF file 
- PON: number of samples when created the actual PON VCF
- bootstrap: bootstrap file series (not really used)
- calls: number of calls

## Mutec2 calls:
- were generated using GATK v4.0.x
