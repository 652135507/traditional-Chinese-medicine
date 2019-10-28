load data
Characterset UTF8
infile 'C004H101110102001-XDYWDBHT-20191031.txt'
append into table XDYWDBHT
fields terminated by '^A'
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
DBWPXH ,
JLYGH ,
CJRQ 
)
