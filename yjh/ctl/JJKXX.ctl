load data
Characterset UTF8
infile 'C004H101110102001-JJKXX-20190930.txt'
append into table JJKXX
fields terminated by ''
trailing nullcols
(
KH ,
HQCKZH ,
KHTYBH ,
YXJGDM ,
JRXKZH ,
NBJGH ,
ZJLB ,
ZJHM ,
JJKCPMC ,
KPZT ,
YGBZ ,
KKRQ ,
KKGYH ,
CJRQ 
)
