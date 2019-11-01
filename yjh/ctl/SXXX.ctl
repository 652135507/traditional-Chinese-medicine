load data
Characterset UTF8
infile 'C004H101110102001-SXXX-20190930.txt'
append into table SXXX
fields terminated by ''
trailing nullcols
(
SXXYH ,
KHTYBH ,
YXJGDM ,
JRXKZH ,
NBJGH ,
FSRQ ,
KHMC ,
SXZL ,
SXXYMC ,
EDJE ,
BZ ,
SXRQ ,
SXZT ,
SXKSRQ ,
SXDQRQ ,
SCSXRQ ,
JCDYJ  char(100000) "substr(:JCDYJ ,1,2000)" ,
ZZSPR ,
SFXHED ,
SFLSED ,
SXYGH ,
CJRQ 
)
