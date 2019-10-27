load data
Characterset UTF8
infile 'C004H101110102001-JGGXB-20190930.txt'
append into table JGGXB
fields terminated by '^A'
trailing nullcols
(
GWBH,
YXJGDM,
NBJGH,
JRXKZH,
GWZL,
GWMC,
GWSM,
GWZT,
CJRQ,
YHJGDM,
NBJGH,
JRXKZH,
YHJGMC,
YZBM,
SJGLJGDM,
SJGLJGMC,
CJRQ
)
