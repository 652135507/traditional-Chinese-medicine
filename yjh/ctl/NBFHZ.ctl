load data
Characterset UTF8
infile 'C004H101110102001-NBFHZ-20191031.txt'
append into table NBFHZ
fields terminated by '^A'
trailing nullcols
(
NBFHZZH ,
YXJGDM ,
JRXKZH ,
NBJGH ,
MXKMBH ,
ZHMC ,
YXJGMC ,
MXKMMC ,
JDBZ ,
BZ ,
TJKMBH ,
NBFHZZHLX ,
JFYE ,
DFYE ,
JXBZ ,
JXFS ,
LL ,
KHRQ ,
XHRQ ,
ZHZT ,
CJRQ 
)
