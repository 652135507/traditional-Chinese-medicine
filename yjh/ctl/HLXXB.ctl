load data
Characterset UTF8
infile 'C004H101110102001-HLXXB-20191031.txt'
append into table HLXXB
fields terminated by ''
trailing nullcols
(
YXJGDM ,
JRXKZH ,
NBJGH ,
YXJGMC ,
WB ,
BB ,
ZJJ ,
JZJ ,
HLRQ ,
CJRQ 
)
