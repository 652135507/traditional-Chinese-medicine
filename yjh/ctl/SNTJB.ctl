load data
Characterset UTF8
infile 'C004H101110102001-SNTJB-20190930.txt'
append into table SNTJB
fields terminated by ''
trailing nullcols
(
JRJGDM ,
JRXKZH ,
NBJGH ,
TJKMBH ,
TJKMMC ,
TJKMJE ,
QXLX ,
TJRQ ,
BZ ,
DQMC ,
XZQHDM ,
CJRQ 
)
