load data
Characterset UTF8
infile 'C004H101110102001-GLGX-20191031.txt'
append into table GLGX
fields terminated by ''
trailing nullcols
(
KHTYBH ,
YXJGDM ,
JRXKZH ,
NBJGH ,
GLRKHTYBH ,
KHSBM ,
KHLB ,
GLRSBM ,
GLRMC ,
GLRLB ,
GXLX ,
GLGXZT ,
LRSJ ,
CJRQ 
)
