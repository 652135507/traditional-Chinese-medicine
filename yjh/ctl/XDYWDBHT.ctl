load data
Characterset UTF8
infile 'C004H101110102001-XDYWDBHT-20191031.txt'
append into table XDYWDBHT
fields terminated by ''
trailing nullcols
(
DBHTH ,
JRXKZH ,
YXJGDM ,
NBJGH ,
DBLX ,
DBHTLX ,
BZRLB ,
BZRMC ,
ZJLB ,
ZJHM ,
BZRJZC ,
DBQSRQ ,
DBDQRQ ,
DBHTZT ,
DBHTQDRQ ,
DBHTSXRQ ,
DBHTDQRQ ,
DBBZ ,
DBZJE ,
DBWPXH  char(100000) "substr(:DBWPXH ,1,1000)" ,
JLYGH ,
CJRQ 
)
