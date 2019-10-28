load data
Characterset UTF8
infile 'C004H101110102001-NBKMDZB-20191031.txt'
append into table NBKMDZB
fields terminated by '^A'
trailing nullcols
(
KMBH ,
KMMC ,
KJKMJC ,
SJKMBH ,
SJKMMC ,
GSYWDL ,
GSYWZL ,
CJRQ 
)
