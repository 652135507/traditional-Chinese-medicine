load data
Characterset UTF8
infile'C004H101110102001-HLXXB-20190930.txt'
append into table HLXXB
fields terminated by '^A'
trailing nullcols
(
YXJGDM,
JRXKZH,
NBJGH,
YXJGMC,
WB,
BB,
ZJJ,
JZJ,
HLRQ,
CJRQ
)
