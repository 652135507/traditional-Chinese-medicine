load data
Characterset UTF8
infile 'C004H101110102001-CZXX-20190930.txt'
append into table CZXX
fields terminated by ''
trailing nullcols
(
CZH ,
HQCKZH ,
KHTYBH ,
YXJGDM ,
JRXKZH ,
NBJGH ,
ZJLB ,
ZJHM ,
CZLX ,
CZZT ,
YGBZ ,
QYRQ ,
QYGYH ,
CJRQ 
)
