load data
Characterset UTF8
infile 'C004H101110102001-XDHTB-20191031.txt'
append into table XDHTB
fields terminated by '^A'
trailing nullcols
(
XDHTH ,
ZHTH ,
KHTYBH ,
YXJGDM ,
JRXKZH ,
NBJGH ,
KHMC ,
CPMC ,
DKXGZL ,
XDYWZL ,
BZ ,
JE ,
HTYDRQ ,
HTDQRQ ,
LLLX ,
JZLL ,
LLFD ,
ZYDBFS ,
GHJLGH ,
DKQX ,
FKFS ,
ZJLY ,
DKYT ,
DKTXDQ ,
DKTXXY ,
SFGJXZXY ,
CJRQ 
)
