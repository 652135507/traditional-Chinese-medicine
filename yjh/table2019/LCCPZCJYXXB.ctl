load data
Characterset UTF8
infile'C004H101110102001-LCCPZCJYXXB-20190930.txt'
append into table LCCPZCJYXXB
fields terminated by '^A'
trailing nullcols
(
JYR,
CPID,
CPDJBM,
CPMC,
FXJGDM,
FXJGMC,
FXJGLX,
JYDJBM,
HNJYBM,
JYLX,
JYDSF,
JYDSFLX,
BZ,
ZCID,
HNZCFZBM,
ZCFZDJBM,
ZCFZLBYJ,
ZCFZLBEJ,
JYLTCS,
ZCMC,
HY,
FSJE,
ZSRMBJE,
SL,
DWCJQJ,
DWCJJJ,
DQSYL,
ZCJLFS,
BZ
)