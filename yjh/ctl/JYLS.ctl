load data
Characterset UTF8
infile 'C004H101110102001-JYLS-20190930.txt'
append into table JYLS
fields terminated by '^A'
trailing nullcols
(
TZRQ,
XDJJH,
XDHTH,
KHTYBH,
YXJGDM,
JRXKZH,
NBJGH,
YXJGMC,
YMXKMBH,
YMXKMMC,
YWJXT,
XMXKMBH,
XMXKMMC,
XWJXT,
BZ,
ZRJE,
ZCJE,
KHMC,
JBGYH,
TZGYH,
SQGYH,
SPGYH,
BDYY,
BDFS,
CJRQ,
HXJYLSH,
ZJYLSH,
BCXH,
JYRQ,
YXJGDM,
NBJGH,
JRXKZH,
MXKMBH,
JYSJ,
JZRQ,
JZSJ,
JYJGMC,
JYZH,
JYHM,
JYXTMC,
DFXH,
DFJGMC,
DFZH,
DFHM,
JYJE,
ZHYE,
JYJDBZ,
XZBZ,
BZ,
YWLX,
JYLX,
JYQD,
JYJZMC,
JYJZH,
CZGYH,
GYLSH,
FHGYH,
ZY,
ZPZZL,
ZPZH,
FPZZL,
FPZH,
CBMBZ,
SJC,
ZHBZ,
KXHBZ,
CJRQ
)
