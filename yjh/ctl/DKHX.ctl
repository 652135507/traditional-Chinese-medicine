load data
Characterset UTF8
infile 'C004H101110102001-DKHX-20191031.txt'
append into table DKHX
fields terminated by ''
trailing nullcols
(
XDJJH ,
XDHTH ,
KHTYBH ,
YXJGDM ,
JRXKZH ,
NBJGH ,
MXKMBH ,
MXKMMC ,
KMGSJG ,
BZ ,
SHDKBJ ,
SHBNLX ,
SHBWLX ,
HXRQ ,
HXSHBJ ,
HXSHBNLX ,
HXSHBWLX ,
SHBZ ,
HXSHGYH ,
HXSHRQ ,
BZH ,
CJRQ 
)
