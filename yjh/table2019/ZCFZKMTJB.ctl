load data
Characterset UTF8
infile'C004H101110102001-ZCFZKMTJB-20190930.txt'
append into table ZCFZKMTJB
fields terminated by '^A'
trailing nullcols
(
JRJGDM,
JRXKZH,
NBJGH,
TJKMBH,
TJKMMC,
TJKMJE,
QXLX,
TJRQ,
BZ,
DQMC,
XZQHDM,
CJRQ
)
