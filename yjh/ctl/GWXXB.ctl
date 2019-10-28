load data
Characterset UTF8
infile 'C004H101110102001-GWXXB-20191031.txt'
append into table GWXXB
fields terminated by '^A'
trailing nullcols
(
GWBH ,
YXJGDM ,
NBJGH ,
JRXKZH ,
GWZL ,
GWMC ,
GWSM ,
GWZT ,
CJRQ 
)
