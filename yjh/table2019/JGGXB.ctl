load data
Characterset UTF8
infile'C004H101110102001-JGGXB-20190930.txt'
append into table JGGXB
fields terminated by '^A'
trailing nullcols
(
YHJGDM,
NBJGH,
JRXKZH,
YHJGMC,
YZBM,
SJGLJGDM,
SJGLJGMC,
CJRQ
)
