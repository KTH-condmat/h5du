# h5du

```
==============================================  h5du  ==============================================
HDF5 Disk Usage Analyzer

Usage                                : ./h5du [-option <value>].
----------------------------------------------------------------------------------------------------
option  <value>            default   : Description
----------------------------------------------------------------------------------------------------
-h                                   : Help. Shows this text.
-A                                   : Print Attributes
-B      <1000|1024>        1024      : Base for converting bytes to human-readable units (kB/KiB)
-D                                   : Print Datasets
-d      <depth filter>     -1 (inf)  : Print objects in groups up to this depth
-f      <filepath>                   : Path to file to analyze
-H                                   : Print human-readable units (kB/KiB, MB/MiB...)
-K      <size|name>        size      : Sort results according to key "size" or "name"
-k      <filter key>                 : Filter links matching key
-g      <group root>       .         : Start analysis from group
-n      <num hits>         -1 (inf)  : Max number of search hits
-O      <desc|asc>         desc      : Sort results in ascending/descending order
-p      <num decimals>     2         : Number of decimals used when printing human-readable units
-T      <dset|attr>        dset      : Sort results according to dataset or attribute
-v      <level>            2         : Enables verbose logging at level 0 (max) to 5 (min)
-V      <level>            2         : As "-v" but for the underlying h5pp library (very verbose)
----------------------------------------------------------------------------------------------------

Example 1 - Print the size of all groups recursively in descending order of size:
     ./h5du -f example.h5

Example 2 - Print the size of all groups starting from group "grpA/grpB" in human-readable units:
    ./h5du -f example.h5 -g grpA/grpB -H

Example 3 - Print the size of all groups and datasets recursively in ascending order of name:
    ./h5du -f example.h5 -D -K name -O asc

```


## Usage

### Example 1

```
> ./h5du -f ../example.h5
Type      Path                                          Dataset size    Storage size   Ratio  Attribute size     Header Size
Group     .                                                 21882429        12360506    1.77           32564          376840
Group     xDMRG                                             21511752        11620887    1.85           16990          199856
Group     xDMRG/state_0                                     16104024         8344188    1.93            9840          117128
Group     xDMRG/state_0/finished                             7970072         4099817    1.94            2922           37200
Group     xDMRG/state_0/checkpoint/iter_last                 8051688         4096915    1.97            2922           37200
Group     xDMRG/state_0/checkpoint                           8051688         4096915    1.97            2922           37240
Group     xDMRG/state_0/finished/mps                         7964352         4031629    1.98            1176           19376
Group     xDMRG/state_0/checkpoint/iter_last/mps             8027120         4028711    1.99            1176           19376
Group     xDMRG/state_1                                      5405328         3260379    1.66            6918           79928
Group     xDMRG/state_1/checkpoint/iter_last                 5348584         3114723    1.72            2922           37200
Group     xDMRG/state_1/checkpoint                           5348584         3114723    1.72            2922           37240
Group     xDMRG/state_1/checkpoint/iter_last/mps             5338640         3046755    1.75            1176           19376
Group     fDMRG                                               350624          719566    0.49           14068          162656
Group     fDMRG/state_e_min                                   178048          355862    0.50            6918           79928
Group     fDMRG/state_e_max                                   170176          347384    0.49            6918           79928
Group     fDMRG/state_e_min/checkpoint                        166600          220453    0.76            2922           37240
Group     fDMRG/state_e_min/checkpoint/iter_last              166600          220453    0.76            2922           37200
Group     fDMRG/state_e_max/checkpoint/iter_last              158072          212045    0.75            2922           37200
Group     fDMRG/state_e_max/checkpoint                        158072          212045    0.75            2922           37240
Group     fDMRG/state_e_min/checkpoint/iter_last/mps          160336          153944    1.04            1176           19376
Group     fDMRG/state_e_max/checkpoint/iter_last/mps          151040          145541    1.04            1176           19376
Group     xDMRG/state_0/projection                             62664           82408    0.76            2282           27440
Group     xDMRG/state_1/projection                             51256           80608    0.64            2282           27440
Group     fDMRG/state_e_min/finished                            6744           70361    0.10            2282           27440
Group     fDMRG/state_e_max/finished                            6616           70291    0.09            2282           27440
Group     fDMRG/state_e_min/tables                              4704           65048    0.07            1714           15208
Group     fDMRG/state_e_max/tables                              5488           65048    0.08            1714           15208
Group     xDMRG/state_1/tables                                  5488           65048    0.08            1714           15208
Group     xDMRG/state_0/tables                                 19600           65048    0.30            1714           15208
Group     common                                               20028           20028    1.00            1506           13904
Group     xDMRG/model                                           2400           16320    0.15             232            2760
Group     fDMRG/model                                           2400           16320    0.15             232            2760
Group     xDMRG/state_0/projection/mps                         48480           14187    3.42             536            9616
Group     xDMRG/state_1/projection/mps                         41952           12616    3.33             536            9616
Group     fDMRG/state_e_min/finished/mps                        4400            3852    1.14             536            9616
Group     fDMRG/state_e_max/finished/mps                        4288            3787    1.13             536            9616
Group     git                                                     25              25    1.00               0             424
```

### Example 2
```
> ./h5du -f ../example.h5 -g xDMRG/state_0 -H
Type      Path                                      Dataset size    Storage size   Ratio  Attribute size     Header Size
Group     xDMRG/state_0                                15.36 MiB        7.96 MiB    1.93        9.61 KiB      114.38 KiB
Group     xDMRG/state_0/finished                        7.60 MiB        3.91 MiB    1.94        2.85 KiB       36.33 KiB
Group     xDMRG/state_0/checkpoint                      7.68 MiB        3.91 MiB    1.97        2.85 KiB       36.37 KiB
Group     xDMRG/state_0/checkpoint/iter_last            7.68 MiB        3.91 MiB    1.97        2.85 KiB       36.33 KiB
Group     xDMRG/state_0/finished/mps                    7.59 MiB        3.84 MiB    1.98        1.15 KiB       18.92 KiB
Group     xDMRG/state_0/checkpoint/iter_last/mps        7.65 MiB        3.84 MiB    1.99        1.15 KiB       18.92 KiB
Group     xDMRG/state_0/projection                     61.20 KiB       80.48 KiB    0.76        2.23 KiB       26.80 KiB
Group     xDMRG/state_0/tables                         19.14 KiB       63.52 KiB    0.30        1.67 KiB       14.85 KiB
Group     xDMRG/state_0/projection/mps                 47.34 KiB       13.85 KiB    3.42      536.00 B          9.39 KiB
```

### Example 3
```
> ./h5du -f ../example.h5 -D -K name -O asc
Type      Path                                          Dataset size    Storage size   Ratio  Attribute size     Header Size
Group     .                                                 21882429        12360506    1.77           32564          376840
Group     common                                               20028           20028    1.00            1506           13904
Dataset       algo_type                                           31              31    1.00              54            1016
Dataset       config_file_contents                             19556           19556    1.00               0             128
Dataset       config_filename                                     27              27    1.00               0             128
Dataset       finished                                            30              30    1.00               9             872
Dataset       finished_all                                         1               1    1.00               0             104
Dataset       hamiltonian                                         33              33    1.00             216            1016
Dataset       iteration                                           31              31    1.00              72             872
Dataset       model_size                                          32              32    1.00              72             872
Dataset       model_type                                          32              32    1.00             108            1016
Dataset       mpo_prefix                                          32              32    1.00             144            1016
Dataset       mps_prefix                                          32              32    1.00             311            1016
Dataset       position                                            30              30    1.00              72             872
Dataset       state_name                                          32              32    1.00              88            1016
Dataset       state_root                                          32              32    1.00             142            1016
Dataset       step                                                26              26    1.00              72             872
Dataset       storage_level                                       35              35    1.00              53            1016
Dataset       storage_reason                                      36              36    1.00              93            1016
Group     fDMRG                                               350624          719566    0.49           14068          162656
Group     fDMRG/model                                           2400           16320    0.15             232            2760
Dataset       hamiltonian                                       2400           16320    0.15             232            2720
Group     fDMRG/state_e_max                                   170176          347384    0.49            6918           79928
Group     fDMRG/state_e_max/checkpoint                        158072          212045    0.75            2922           37240
Group     fDMRG/state_e_max/checkpoint/iter_last              158072          212045    0.75            2922           37200
Dataset       bond_dimensions                                    168             168    1.00               0             288
Dataset       entanglement_entropies                             168             168    1.00               0             296
Dataset       measurements                                      1288           16376    0.08             382            2568
Dataset       mem_usage                                          280           16360    0.02              44             848
Dataset       profiling                                         2296           16072    0.14             404            5352
Dataset       renyi_100                                          168             168    1.00               0             296
Dataset       renyi_2                                            168             168    1.00               0             296
Dataset       renyi_3                                            168             168    1.00               0             296
Dataset       renyi_4                                            168             168    1.00               0             296
Dataset       schmidt_midchain                                   368             280    1.31              32             552
Dataset       status                                            1624           16240    0.10             884            6400
Dataset       truncation_errors                                  168             168    1.00               0             296

... and so on 
```
