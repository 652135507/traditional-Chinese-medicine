load data
Characterset UTF8
infile'C004H101110102001-JGXXB-20190930.txt'
append into table JGXXB
fields terminated by '^A'
trailing nullcols
(
YXJGDM,
NBJGH,
JRXKZH,
YYZZH,
YXJGMC,
JGLB,
YZBM,
WDH,
YYZT,
CLSJ,
JGGZKSSJ,
JGGZZZSJ,
JGDZ,
FZRXM,
FZRZW,
FZRLXDH,
CJRQ
)