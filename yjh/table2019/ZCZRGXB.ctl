load data
Characterset UTF8
infile'C004H101110102001-ZCZRGXB-20190930.txt'
append into table ZCZRGXB
fields terminated by '^A'
trailing nullcols
(
ZRHTH,
YXJGDM,
XDJJH,
JRXKZH,
NBJGH,
CJRQ
)
