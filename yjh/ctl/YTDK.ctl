load data
Characterset UTF8
infile 'C004H101110102001-YTDK-20191031.txt'
append into table YTDK
fields terminated by '^A'
trailing nullcols
(
XDHTH ,
KHTYBH ,
YXJGDM ,
JRXKZH ,
NBJGH ,
XYLX ,
ZBXXH ,
CDXXH ,
DLXXH ,
ZBXXM ,
CDXXM ,
DLXXM ,
DLCDBZ ,
JKRMC ,
SQDKZE ,
CDDKJE ,
SJCDDKJE ,
YFFDKJE ,
YFFCDDKJE ,
CDSYDKJE ,
JLXYXJGDM ,
XYQSRQ ,
XYZZRQ ,
XYZT ,
FHGY ,
CJRQ 
)