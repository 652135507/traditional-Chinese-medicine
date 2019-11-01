load data
Characterset UTF8
infile 'C004H101110102001-YGB-20190930.txt'
append into table YGB
fields terminated by ''
trailing nullcols
(
GH ,
YXJGDM ,
NBJGH ,
JRXKZH ,
YXJGMC ,
XM ,
SFZH ,
LXDH ,
WDH ,
SSBM ,
ZW ,
YGZT ,
GWBH ,
CJRQ 
)
