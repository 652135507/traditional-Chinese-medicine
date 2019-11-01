load data
Characterset UTF8
infile 'C004H101110102001-DBGX-20190930.txt'
append into table DBGX
fields terminated by ''
trailing nullcols
(
DBHTH ,
BDBHTH ,
YXJGDM ,
JRXKZH ,
NBJGH ,
DBLX ,
DBJE ,
DBQSRQ ,
DBDQRQ ,
DBZT ,
JLDBYGH ,
CJRQ 
)
