load data
Characterset UTF8
infile 'C004H101110102001-GDXX-20191031.txt'
append into table GDXX
fields terminated by ''
trailing nullcols
(
KHTYBH ,
ZZJGDM ,
YXJGDM ,
JRXKZH ,
NBJGH ,
GDMC ,
GDZJLB ,
GDZJHM ,
GDZT ,
CGBL ,
RGSJ ,
CJRQ 
)
