load data
Characterset UTF8
infile'C004H101110102001-DKHX-20190930.txt'
append into table DKHX
fields terminated by '^A'
trailing nullcols
(
XDJJH,
XDHTH,
KHTYBH,
YXJGDM,
JRXKZH,
NBJGH,
KMGSJG,
BZ,
SHDKBJ,
SHBNLX,
SHBWLX,
HXRQ,
HXSHBJ,
HXSHBNLX,
HXSHBWLX,
SHBZ,
HXSHGYH,
HXSHRQ,
BZH,
CJRQ
)
