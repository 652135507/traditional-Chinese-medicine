load data
Characterset UTF8
infile 'C004H101110102001-GYB-20190930.txt'
append into table GYB
fields terminated by ''
trailing nullcols
(
GYH ,
GH ,
YXJGDM ,
NBJGH ,
ZXJGDM ,
JRXKZH ,
YXJGMC ,
GYLX ,
SFSTGY ,
KHJLBZ ,
JBZWBZ ,
QXGLBZ ,
YBGLBZ ,
XDYBZ ,
KGYBZ ,
ZHGYBZ ,
SQBZ ,
SQFW ,
GWBH ,
GYYHJB ,
GYQXJB ,
SGRQ ,
GWZT ,
CJRQ 
)
