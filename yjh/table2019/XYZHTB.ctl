load data
Characterset UTF8
infile'C004H101110102001-XYZHTB-20190930.txt'
append into table XYZHTB
fields terminated by '^A'
trailing nullcols
(
YXJGDM,
JRXKZH,
NBJGH,
YXJGMC,
XYZHYBH,
XYZSQRBH,
XYZSQRMC,
MYHTBH,
HPMS,
MYBZDM,
MYHTJE,
SYRMC,
SYRGJDM,
TZHMC,
XYZZL,
BZDM,
XYZJE,
XYZFKQXMS,
XYZZFLX,
DBHYBHXX,
QYRQ,
CJRQ
)
