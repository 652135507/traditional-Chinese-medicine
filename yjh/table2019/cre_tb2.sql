create table JGXXB (
YXJGDM varchar(30) , /* 银行机构代码  */
NBJGH varchar(30) not null , /* 内部机构号  */
JRXKZH varchar(30) , /* 金融许可证号  */
YYZZH varchar(60) , /* 营业执照号  */
YXJGMC varchar(200) , /* 名称  */
JGLB varchar(30) , /* 机构类别  */
YZBM varchar(6) , /* 邮政编码  */
WDH varchar(30) , /* 网点号  */
YYZT varchar(6) , /* 营业状态  */
CLSJ varchar(8) , /* 日期  */
JGGZKSSJ varchar(6) , /* 时间  */
JGGZZZSJ varchar(6) , /* 时间  */
JGDZ varchar(400) , /* 地址  */
FZRXM varchar(100) , /* 姓名  */
FZRZW varchar(60) , /* 职务  */
FZRLXDH varchar(30) , /* 电话  */
CJRQ varchar(8) not null  /* 日期  */
);


create index JGXXB_idx0 on JGXXB(NBJGH ,CJRQ );
create table YGB (
GH varchar(30) not null , /* 工号  */
YXJGDM varchar(30) , /* 银行机构代码  */
NBJGH varchar(30) not null , /* 内部机构号  */
JRXKZH varchar(30) , /* 金融许可证号  */
YXJGMC varchar(200) , /* 名称  */
XM varchar(100) , /* 姓名  */
SFZH varchar(60) , /* 证件号码  */
LXDH varchar(30) , /* 电话  */
WDH varchar(30) , /* 网点号  */
SSBM varchar(60) , /* 所属部门  */
ZW varchar(60) , /* 职务  */
YGZT varchar(30) , /* 状态  */
GWBH varchar(60) , /* 岗位编号  */
CJRQ varchar(8) not null  /* 日期  */
);


create index YGB_idx0 on YGB(GH ,NBJGH ,CJRQ );
create table GYB (
GYH varchar(30) not null , /* 柜员号  */
GH varchar(30) , /* 工号  */
YXJGDM varchar(30) , /* 银行机构代码  */
NBJGH varchar(30) not null , /* 内部机构号  */
ZXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
YXJGMC varchar(200) , /* 名称  */
GYLX varchar(30) , /* 柜员类型  */
SFSTGY varchar(4) , /* 是否标志  */
KHJLBZ varchar(4) , /* 是否标志  */
XDYBZ varchar(4) , /* 是否标志  */
SQFW varchar(200) , /* 授权范围  */
GWBH varchar(60) , /* 岗位编号  */
GYYHJB varchar(30) , /* 柜员用户级别  */
GYQXJB varchar(30) , /* 柜员权限级别  */
SGRQ varchar(8) , /* 日期  */
GWZT varchar(30) , /* 状态  */
CJRQ varchar(8) not null  /* 日期  */
);


create index GYB_idx0 on GYB(GYH ,NBJGH ,CJRQ );
create table GWXXB (
GWBH varchar(60) not null , /* 岗位编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
NBJGH varchar(30) not null , /* 内部机构号  */
JRXKZH varchar(30) , /* 金融许可证号  */
GWZL varchar(60) , /* 岗位种类  */
GWMC varchar(60) , /* 岗位名称  */
GWSM varchar(400) , /* 岗位说明  */
GWZT varchar(30) , /* 状态  */
CJRQ varchar(8) not null  /* 日期  */
);


create index GWXXB_idx0 on GWXXB(GWBH ,NBJGH ,CJRQ );
create table JGGXB (
YHJGDM varchar(30) , /* 银行机构代码  */
NBJGH varchar(30) not null , /* 内部机构号  */
JRXKZH varchar(30) , /* 金融许可证号  */
YHJGMC varchar(200) , /* 名称  */
YZBM varchar(6) , /* 邮政编码  */
SJGLJGDM varchar(30) , /* 内部机构号  */
SJGLJGMC varchar(200) , /* 名称  */
CJRQ varchar(8) not null  /* 日期  */
);


create index JGGXB_idx0 on JGGXB(NBJGH ,CJRQ );
create table ZZHJQKMB (
JRXKZH varchar(30) , /* 金融许可证号  */
YHJGDM varchar(30) , /* 银行机构代码  */
NBJGH varchar(30) not null , /* 内部机构号  */
YHJGMC varchar(200) , /* 名称  */
KMBH varchar(60) not null , /* 总账会计科目编号  */
KMMC varchar(200) , /* 总账会计科目名称  */
KMJC integer , /* 总账会计科目级次  */
KMLX varchar(60) , /* 总账会计科目类型  */
QCJFYE decimal(16,2) , /* 余额  */
QCDFYE decimal(16,2) , /* 余额  */
JFFSE decimal(16,2) , /* 金额  */
DFFSE decimal(16,2) , /* 金额  */
QMJFYE decimal(16,2) , /* 余额  */
QMDFYE decimal(16,2) , /* 余额  */
BZ varchar(3) not null , /* 币种  */
KJRQ varchar(8) not null , /* 日期  */
BSZQ varchar(20) not null  /* 会计周期  */
);


create index ZZHJQKMB_idx0 on ZZHJQKMB(NBJGH ,KMBH ,BZ ,KJRQ ,BSZQ );
create table NBKMDZB (
KMBH varchar(60) not null , /* 总账会计科目编号  */
KMMC varchar(200) , /* 总账会计科目名称  */
KJKMJC integer , /* 总账会计科目级次  */
SJKMBH varchar(60) , /* 总账会计科目编号  */
SJKMMC varchar(200) , /* 总账会计科目名称  */
GSYWDL varchar(60) , /* 业务类型  */
GSYWZL varchar(30) , /* 子业务类型  */
CJRQ varchar(8) not null  /* 日期  */
);


create index NBKMDZB_idx0 on NBKMDZB(KMBH ,CJRQ );
create table GRHQCKFHZ (
HQCKZH varchar(60) not null , /* 账号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
YXJGMC varchar(200) , /* 名称  */
MXKMMC varchar(300) , /* 明细科目名称  */
TJKMBH varchar(20) , /* 统计科目编号  */
BZ varchar(3) not null , /* 币种  */
ZHMC varchar(200) , /* 账户名称  */
GRHQCKZHLX varchar(60) , /* 个人活期存款账户类型  */
JYJZMC varchar(6) , /* 交易介质名称  */
JYJZH varchar(60) not null , /* 交易介质号  */
BZJZHBZ varchar(4) , /* 是否标志  */
LL decimal(16,2) , /* 利率  */
CKYE decimal(16,2) , /* 余额  */
KHRQ varchar(8) , /* 日期  */
KHGYH varchar(30) , /* 柜员号  */
XHRQ varchar(8) , /* 日期  */
ZHZT varchar(60) , /* 账户状态  */
SCDHRQ varchar(8) , /* 日期  */
CHLB varchar(12) not null , /* 钞汇类别  */
CJRQ varchar(8) not null  /* 日期  */
);


create index GRHQCKFHZ_idx0 on GRHQCKFHZ(HQCKZH ,BZ ,JYJZH ,CHLB ,CJRQ );
create table GRHQCKFHZMXJL (
HXJYLSH varchar(60) not null , /* 核心交易流水号  */
ZJYLSH varchar(30) not null , /* 子交易流水号  */
BCXH varchar(30) not null , /* 笔次序号  */
HQCKZH varchar(60) not null , /* 账号  */
WBZH varchar(60) , /* 外部账号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
YXJGMC varchar(200) , /* 名称  */
MXKMMC varchar(300) , /* 明细科目名称  */
HXJYRQ varchar(8) not null , /* 日期  */
HXJYSJ varchar(6) , /* 时间  */
BZ varchar(3) , /* 币种  */
ZHMC varchar(200) , /* 账户名称  */
JYLX varchar(60) , /* 交易类型  */
JYJE decimal(16,2) , /* 金额  */
KHHJGH varchar(30) , /* 内部机构号  */
YWBLJGH varchar(30) , /* 内部机构号  */
ZHYE decimal(16,2) , /* 余额  */
DFZH varchar(60) , /* 账号  */
DFHM varchar(200) , /* 账户名称  */
DFXH varchar(30) , /* 银行机构代码  */
DFXM varchar(200) , /* 名称  */
JYQD varchar(60) , /* 交易渠道  */
XZBZ varchar(4) , /* 现转标志  */
DBRXM varchar(100) , /* 姓名  */
DBRZJLB varchar(60) , /* 证件类别  */
DBRZJHM varchar(60) , /* 证件号码  */
JYGYH varchar(30) , /* 柜员号  */
SQGYH varchar(30) , /* 柜员号  */
ZY varchar(400) , /* 摘要  */
CBMBZ varchar(10) , /* 冲补抹标志  */
JYJDBZ varchar(12) , /* 交易借贷标志  */
CJRQ varchar(8) not null  /* 日期  */
);


create index GRHQCKFHZMXJL_idx0 on GRHQCKFHZMXJL(HXJYLSH ,ZJYLSH ,BCXH ,HQCKZH ,HXJYRQ ,CJRQ );
create table GRDQCKFHZ (
DQCKZH varchar(60) not null , /* 账号  */
GRKHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
MXKMMC varchar(300) , /* 明细科目名称  */
YXJGMC varchar(200) , /* 名称  */
BZ varchar(3) not null , /* 币种  */
TJKMBH varchar(20) , /* 统计科目编号  */
ZHMC varchar(200) , /* 账户名称  */
GRDQCKZHLX varchar(60) , /* 个人定期存款账户类型  */
CKQX varchar(20) , /* 存款期限  */
LL decimal(16,2) , /* 利率  */
JYJZMC varchar(6) , /* 交易介质名称  */
JYJZH varchar(60) not null , /* 交易介质号  */
BZJZHBZ varchar(4) , /* 是否标志  */
KHJE decimal(16,2) , /* 金额  */
CKYE decimal(16,2) , /* 余额  */
KHRQ varchar(8) , /* 日期  */
KHGYH varchar(30) , /* 柜员号  */
XHRQ varchar(8) , /* 日期  */
DQR varchar(8) , /* 日期  */
ZHZT varchar(60) , /* 账户状态  */
SCDHRQ varchar(8) , /* 日期  */
CHLB varchar(12) not null , /* 钞汇类别  */
CJRQ varchar(8) not null  /* 日期  */
);


create index GRDQCKFHZ_idx0 on GRDQCKFHZ(DQCKZH ,BZ ,JYJZH ,CHLB ,CJRQ );
create table GRDQCKFHZMXJL (
HXJYLSH varchar(60) not null , /* 核心交易流水号  */
ZJYLSH varchar(30) not null , /* 子交易流水号  */
BCXH varchar(30) not null , /* 笔次序号  */
DQCKZH varchar(60) not null , /* 账号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
YXJGMC varchar(200) , /* 名称  */
MXKMMC varchar(300) , /* 明细科目名称  */
HXJYRQ varchar(8) not null , /* 日期  */
HXJYSJ varchar(6) , /* 时间  */
BZ varchar(3) , /* 币种  */
ZHMC varchar(200) , /* 账户名称  */
JYLX varchar(60) , /* 交易类型  */
JYJE decimal(16,2) , /* 金额  */
KHHJGH varchar(30) , /* 内部机构号  */
YWBLJGH varchar(30) , /* 内部机构号  */
ZHYE decimal(16,2) , /* 余额  */
DFZH varchar(60) , /* 账号  */
DFHM varchar(200) , /* 账户名称  */
DFXH varchar(30) , /* 银行机构代码  */
DFXM varchar(200) , /* 名称  */
JYQD varchar(60) , /* 交易渠道  */
XZBZ varchar(4) , /* 现转标志  */
BFTQZQBZ varchar(4) , /* 是否标志  */
DBRXM varchar(100) , /* 姓名  */
DBRZJLB varchar(60) , /* 证件类别  */
DBRZJHM varchar(60) , /* 证件号码  */
JYGYH varchar(30) , /* 柜员号  */
SQGYH varchar(30) , /* 柜员号  */
ZY varchar(400) , /* 摘要  */
CBMBZ varchar(10) , /* 冲补抹标志  */
JYJDBZ varchar(12) , /* 交易借贷标志  */
CJRQ varchar(8) not null  /* 日期  */
);


create index GRDQCKFHZMXJL_idx0 on GRDQCKFHZMXJL(HXJYLSH ,ZJYLSH ,BCXH ,DQCKZH ,HXJYRQ ,CJRQ );
create table DGHQCKFHZ (
HQCKZH varchar(60) not null , /* 账号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
YXJGMC varchar(200) , /* 名称  */
MXKMMC varchar(300) , /* 明细科目名称  */
TJKMBH varchar(20) , /* 统计科目编号  */
BZ varchar(3) not null , /* 币种  */
ZHMC varchar(200) , /* 账户名称  */
DGHQCKZHLX varchar(60) , /* 对公活期存款账户类型  */
BZJZHBZ varchar(4) , /* 是否标志  */
LL decimal(16,2) , /* 利率  */
CKYE decimal(16,2) , /* 余额  */
KHRQ varchar(8) , /* 日期  */
KHGYH varchar(30) , /* 柜员号  */
XHRQ varchar(8) , /* 日期  */
ZHZT varchar(60) , /* 账户状态  */
SCDHRQ varchar(8) , /* 日期  */
CHLB varchar(12) not null , /* 钞汇类别  */
CJRQ varchar(8) not null  /* 日期  */
);


create index DGHQCKFHZ_idx0 on DGHQCKFHZ(HQCKZH ,BZ ,CHLB ,CJRQ );
create table DGHQCKFHZMXJL (
HXJYLSH varchar(60) not null , /* 核心交易流水号  */
ZJYLSH varchar(30) not null , /* 子交易流水号  */
BCXH varchar(30) not null , /* 笔次序号  */
HQCKZH varchar(60) not null , /* 账号  */
WBZH varchar(60) , /* 外部账号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
YXJGMC varchar(200) , /* 名称  */
MXKMMC varchar(300) , /* 明细科目名称  */
HXJYRQ varchar(8) not null , /* 日期  */
HXJYSJ varchar(6) , /* 时间  */
ZHMC varchar(200) , /* 账户名称  */
JYLX varchar(60) , /* 交易类型  */
JYJE decimal(16,2) , /* 金额  */
KHHJGH varchar(30) , /* 内部机构号  */
YWBLJGH varchar(30) , /* 内部机构号  */
ZHYE decimal(16,2) , /* 余额  */
DFZH varchar(60) , /* 账号  */
DFHM varchar(200) , /* 账户名称  */
DFXH varchar(30) , /* 银行机构代码  */
DFXM varchar(200) , /* 名称  */
JYQD varchar(60) , /* 交易渠道  */
BZ varchar(3) , /* 币种  */
XZBZ varchar(4) , /* 现转标志  */
DBRXM varchar(100) , /* 姓名  */
DBRZJLB varchar(60) , /* 证件类别  */
DBRZJHM varchar(60) , /* 证件号码  */
JYGYH varchar(30) , /* 柜员号  */
SQGYH varchar(30) , /* 柜员号  */
ZY varchar(400) , /* 摘要  */
CBMBZ varchar(10) , /* 冲补抹标志  */
JYJDBZ varchar(12) , /* 交易借贷标志  */
CJRQ varchar(8) not null  /* 日期  */
);


create index DGHQCKFHZMXJL_idx0 on DGHQCKFHZMXJL(HXJYLSH ,ZJYLSH ,BCXH ,HQCKZH ,HXJYRQ ,CJRQ );
create table DGDQCKFHZ (
DQCKZH varchar(60) not null , /* 账号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
MXKMMC varchar(300) , /* 明细科目名称  */
YXJGMC varchar(200) , /* 名称  */
BZ varchar(3) not null , /* 币种  */
TJKMBH varchar(20) , /* 统计科目编号  */
ZHMC varchar(200) , /* 账户名称  */
DGDQCKZHLX varchar(60) , /* 对公定期存款账户类型  */
CKQX varchar(20) , /* 存款期限  */
LL decimal(16,2) , /* 利率  */
BZJZHBZ varchar(4) , /* 是否标志  */
KHJE decimal(16,2) , /* 金额  */
CKYE decimal(16,2) , /* 余额  */
KHRQ varchar(8) , /* 日期  */
KHGYH varchar(30) , /* 柜员号  */
XHRQ varchar(8) , /* 日期  */
DQR varchar(8) , /* 日期  */
ZHZT varchar(60) , /* 账户状态  */
SCDHRQ varchar(8) , /* 日期  */
CHLB varchar(12) not null , /* 钞汇类别  */
CJRQ varchar(8) not null  /* 日期  */
);


create index DGDQCKFHZ_idx0 on DGDQCKFHZ(DQCKZH ,BZ ,CHLB ,CJRQ );
create table DGDQCKFHZMXJL (
HXJYLSH varchar(60) not null , /* 核心交易流水号  */
ZJYLSH varchar(30) not null , /* 子交易流水号  */
BCXH varchar(30) not null , /* 笔次序号  */
DQCKZH varchar(60) not null , /* 账号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
YXJGMC varchar(200) , /* 名称  */
MXKMMC varchar(300) , /* 明细科目名称  */
HXJYRQ varchar(8) not null , /* 日期  */
HXJYSJ varchar(6) , /* 时间  */
BZ varchar(3) , /* 币种  */
ZHMC varchar(200) , /* 账户名称  */
JYLX varchar(60) , /* 交易类型  */
JYJE decimal(16,2) , /* 金额  */
KHHJGH varchar(30) , /* 内部机构号  */
YWBLJGH varchar(30) , /* 内部机构号  */
ZHYE decimal(16,2) , /* 余额  */
DFZH varchar(60) , /* 账号  */
DFHM varchar(200) , /* 账户名称  */
DFXH varchar(30) , /* 银行机构代码  */
DFXM varchar(200) , /* 名称  */
JYQD varchar(60) , /* 交易渠道  */
XZBZ varchar(4) , /* 现转标志  */
BFTQZQBZ varchar(4) , /* 是否标志  */
DBRXM varchar(100) , /* 姓名  */
DBRZJLB varchar(60) , /* 证件类别  */
DBRZJHM varchar(60) , /* 证件号码  */
JYGYH varchar(30) , /* 柜员号  */
SQGYH varchar(30) , /* 柜员号  */
ZY varchar(400) , /* 摘要  */
CBMBZ varchar(10) , /* 冲补抹标志  */
JYJDBZ varchar(12) , /* 交易借贷标志  */
CJRQ varchar(8) not null  /* 日期  */
);


create index DGDQCKFHZMXJL_idx0 on DGDQCKFHZMXJL(HXJYLSH ,ZJYLSH ,BCXH ,DQCKZH ,HXJYRQ ,CJRQ );
create table NBFHZ (
NBFHZZH varchar(60) not null , /* 账号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
ZHMC varchar(200) , /* 账户名称  */
YXJGMC varchar(200) , /* 名称  */
MXKMMC varchar(300) , /* 明细科目名称  */
JDBZ varchar(12) , /* 借贷标志  */
BZ varchar(3) not null , /* 币种  */
TJKMBH varchar(20) , /* 统计科目编号  */
NBFHZZHLX varchar(60) , /* 内部分户账账户类型  */
JFYE decimal(16,2) , /* 余额  */
DFYE decimal(16,2) , /* 余额  */
JXBZ varchar(4) , /* 是否标志  */
JXFS varchar(30) , /* 计息方式  */
LL decimal(16,2) , /* 利率  */
KHRQ varchar(8) , /* 日期  */
XHRQ varchar(8) , /* 日期  */
ZHZT varchar(60) , /* 账户状态  */
CJRQ varchar(8) not null  /* 日期  */
);


create index NBFHZ_idx0 on NBFHZ(NBFHZZH ,BZ ,CJRQ );
create table NBFHZMXJL (
HXJYLSH varchar(60) not null , /* 核心交易流水号  */
ZJYLSH varchar(30) , /* 子交易流水号  */
BCXH varchar(30) , /* 笔次序号  */
NBFHZZH varchar(60) not null , /* 账号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
YXJGMC varchar(200) , /* 名称  */
MXKMMC varchar(300) , /* 明细科目名称  */
HXJYRQ varchar(8) not null , /* 日期  */
HXJYSJ varchar(6) , /* 时间  */
BZ varchar(3) , /* 币种  */
ZHMC varchar(200) , /* 账户名称  */
JYLX varchar(60) , /* 交易类型  */
JYJE decimal(16,2) , /* 金额  */
ZHYE decimal(16,2) , /* 余额  */
DFZH varchar(60) , /* 账号  */
DFKMBH varchar(60) , /* 明细科目编号  */
DFKMMC varchar(300) , /* 明细科目名称  */
DFHM varchar(200) , /* 账户名称  */
DFXH varchar(30) , /* 银行机构代码  */
JYQD varchar(60) , /* 交易渠道  */
XZBZ varchar(4) , /* 现转标志  */
JYGYH varchar(30) , /* 柜员号  */
SQGYH varchar(30) , /* 柜员号  */
JZRQ varchar(8) , /* 日期  */
XZRQ varchar(8) , /* 日期  */
ZY varchar(400) , /* 摘要  */
CBMBZ varchar(10) , /* 冲补抹标志  */
JYJDBZ varchar(12) , /* 交易借贷标志  */
CJRQ varchar(8) not null  /* 日期  */
);


create index NBFHZMXJL_idx0 on NBFHZMXJL(HXJYLSH ,NBFHZZH ,HXJYRQ ,CJRQ );
create table GRXDFHZ (
DKFHZH varchar(60) not null , /* 账号  */
XDJJH varchar(100) not null , /* 借据号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
YXJGMC varchar(200) , /* 名称  */
MXKMMC varchar(300) , /* 明细科目名称  */
KJHSFS varchar(30) , /* 会计核算方式  */
ZHMC varchar(200) , /* 账户名称  */
BZ varchar(3) not null , /* 币种  */
ZJHKRQ varchar(8) , /* 日期  */
TJKMBH varchar(20) , /* 统计科目编号  */
DKHTH varchar(100) , /* 合同号  */
XDYXM varchar(100) , /* 姓名  */
DKWJFL varchar(6) , /* 贷款五级分类  */
HKZH varchar(60) , /* 账号  */
DKRZZH varchar(60) , /* 账号  */
DKLL decimal(16,2) , /* 利率  */
DKBJZE decimal(16,2) , /* 金额  */
ZCBJ decimal(16,2) , /* 余额  */
YQBJ decimal(16,2) , /* 余额  */
YSLX decimal(16,2) , /* 余额  */
BWQXYE decimal(16,2) , /* 余额  */
DKQX integer , /* 贷款期限  */
DQRQ varchar(8) , /* 日期  */
QXRQ varchar(8) , /* 日期  */
KHRQ varchar(8) , /* 日期  */
XHRQ varchar(8) , /* 日期  */
YQRQ varchar(8) , /* 日期  */
ZHZT varchar(60) , /* 账户状态  */
CJRQ varchar(8) not null  /* 日期  */
);


create index GRXDFHZ_idx0 on GRXDFHZ(DKFHZH ,XDJJH ,BZ ,CJRQ );
create table GRXDFHZMXJL (
HXJYLSH varchar(60) not null , /* 核心交易流水号  */
ZJYLSH varchar(30) not null , /* 子交易流水号  */
BCXH varchar(30) not null , /* 笔次序号  */
DKFHZH varchar(60) not null , /* 账号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
XDJJH varchar(100) not null , /* 借据号  */
YXJGMC varchar(200) , /* 名称  */
MXKMMC varchar(300) , /* 明细科目名称  */
HXJYRQ varchar(8) not null , /* 日期  */
HXJYSJ varchar(6) , /* 时间  */
ZHMC varchar(200) , /* 账户名称  */
JYLX varchar(60) , /* 交易类型  */
JYJDBZ varchar(12) , /* 交易借贷标志  */
JYJE decimal(16,2) , /* 金额  */
ZHYE decimal(16,2) , /* 余额  */
DFZH varchar(60) , /* 账号  */
DFHM varchar(200) , /* 账户名称  */
DFXH varchar(30) , /* 银行机构代码  */
DFXM varchar(200) , /* 名称  */
JYQD varchar(60) , /* 交易渠道  */
BZ varchar(3) , /* 币种  */
ZY varchar(400) , /* 摘要  */
CBMBZ varchar(10) , /* 冲补抹标志  */
DBRXM varchar(100) , /* 姓名  */
DBRZJLB varchar(60) , /* 证件类别  */
DBRZJHM varchar(60) , /* 证件号码  */
JYGYH varchar(30) , /* 柜员号  */
SQGYH varchar(30) , /* 柜员号  */
XZBZ varchar(4) , /* 现转标志  */
CJRQ varchar(8) not null  /* 日期  */
);


create index GRXDFHZMXJL_idx0 on GRXDFHZMXJL(HXJYLSH ,ZJYLSH ,BCXH ,DKFHZH ,XDJJH ,HXJYRQ ,CJRQ );
create table DGXDFHZ (
DKFHZH varchar(60) not null , /* 账号  */
XDJJH varchar(100) not null , /* 借据号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
YXJGMC varchar(200) , /* 名称  */
MXKMMC varchar(300) , /* 明细科目名称  */
ZHMC varchar(200) , /* 账户名称  */
BZ varchar(3) not null , /* 币种  */
ZJHKRQ varchar(8) , /* 日期  */
TJKMBH varchar(20) , /* 统计科目编号  */
DKHTH varchar(100) , /* 合同号  */
XDYXM varchar(100) , /* 姓名  */
DKWJFL varchar(6) , /* 贷款五级分类  */
HKZH varchar(60) , /* 账号  */
DKRZZH varchar(60) , /* 账号  */
DKLL decimal(16,2) , /* 利率  */
DKBJZE decimal(16,2) , /* 金额  */
ZCBJ decimal(16,2) , /* 余额  */
YQBJ decimal(16,2) , /* 余额  */
YSLX decimal(16,2) , /* 余额  */
BWQXYE decimal(16,2) , /* 余额  */
DKQX integer , /* 贷款期限  */
DQRQ varchar(8) , /* 日期  */
QXRQ varchar(8) , /* 日期  */
KHRQ varchar(8) , /* 日期  */
XHRQ varchar(8) , /* 日期  */
YQRQ varchar(8) , /* 日期  */
ZHZT varchar(60) , /* 账户状态  */
CJRQ varchar(8) not null  /* 日期  */
);


create index DGXDFHZ_idx0 on DGXDFHZ(DKFHZH ,XDJJH ,BZ ,CJRQ );
create table DGXDFHZMXJL (
HXJYLSH varchar(60) not null , /* 核心交易流水号  */
ZJYLSH varchar(30) not null , /* 子交易流水号  */
BCXH varchar(30) not null , /* 笔次序号  */
DKZH varchar(60) not null , /* 账号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
XDJJH varchar(100) , /* 借据号  */
YXJGMC varchar(200) , /* 名称  */
MXKMMC varchar(300) , /* 明细科目名称  */
HXJYRQ varchar(8) not null , /* 日期  */
HXJYSJ varchar(6) , /* 时间  */
ZHMC varchar(200) , /* 账户名称  */
JYLX varchar(60) , /* 交易类型  */
JYJDBZ varchar(12) , /* 交易借贷标志  */
JYJE decimal(16,2) , /* 金额  */
ZHYE decimal(16,2) , /* 余额  */
DFZH varchar(60) , /* 账号  */
DFHM varchar(200) , /* 账户名称  */
DFXH varchar(30) , /* 银行机构代码  */
DFXM varchar(200) , /* 名称  */
JYQD varchar(60) , /* 交易渠道  */
BZ varchar(3) , /* 币种  */
ZY varchar(400) , /* 摘要  */
CBMBZ varchar(10) , /* 冲补抹标志  */
DBRXM varchar(100) , /* 姓名  */
DBRZJLB varchar(60) , /* 证件类别  */
DBRZJHM varchar(60) , /* 证件号码  */
JYGYH varchar(30) , /* 柜员号  */
SQGYH varchar(30) , /* 柜员号  */
XZBZ varchar(4) , /* 现转标志  */
CJRQ varchar(8) not null  /* 日期  */
);


create index DGXDFHZMXJL_idx0 on DGXDFHZMXJL(HXJYLSH ,ZJYLSH ,BCXH ,DKZH ,HXJYRQ ,CJRQ );
create table GRJCXX (
KHTYBH varchar(60) not null , /* 客户统一编号  */
ZJHM varchar(60) , /* 证件号码  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
LYXT varchar(100) , /* 来源系统  */
KHXM varchar(100) , /* 姓名  */
KHYWXM varchar(200) , /* 客户英文姓名  */
ZJLB varchar(60) , /* 证件类别  */
GJ varchar(60) , /* 国籍  */
MZ varchar(30) , /* 民族  */
XB varchar(10) , /* 性别  */
XL varchar(30) , /* 学历  */
CSRQ varchar(8) , /* 日期  */
GZDWMC varchar(200) , /* 名称  */
GZDWDZ varchar(400) , /* 地址  */
GZDWDH varchar(30) , /* 电话  */
ZY varchar(80) , /* 职业  */
JTZZ varchar(400) , /* 地址  */
TXDZ varchar(400) , /* 地址  */
JTDH varchar(30) , /* 电话  */
YDDH varchar(30) , /* 电话  */
GRYSR decimal(16,2) , /* 金额  */
JTYSR decimal(16,2) , /* 金额  */
HYQK varchar(30) , /* 婚姻情况  */
POXM varchar(100) , /* 姓名  */
POLXDH varchar(30) , /* 电话  */
POYDDH varchar(30) , /* 电话  */
PODYKHH varchar(60) , /* 客户统一编号  */
BXYGBZ varchar(4) , /* 是否标志  */
SBXHMDBZ varchar(4) , /* 是否标志  */
SHMDRQ varchar(8) , /* 日期  */
SHMDYY varchar(400) , /* 上黑名单原因  */
DWXZ varchar(60) , /* 单位性质  */
ZC varchar(60) , /* 职称  */
SFNH varchar(4) , /* 是否标志  */
CJRQ varchar(8) not null  /* 日期  */
);


create index GRJCXX_idx0 on GRJCXX(KHTYBH ,CJRQ );
create table GRKHGXXX (
KHTYBH varchar(60) not null , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
DYGRKHTYBH varchar(60) not null , /* 客户统一编号  */
SHGX varchar(60) , /* 社会关系  */
DYGRKHXM varchar(100) , /* 姓名  */
DYGRKHGZDWMC varchar(200) , /* 名称  */
DYGRKHGZDWDZ varchar(400) , /* 地址  */
DYGRKHGZDWDH varchar(30) , /* 电话  */
CJRQ varchar(8) not null  /* 日期  */
);


create index GRKHGXXX_idx0 on GRKHGXXX(KHTYBH ,DYGRKHTYBH ,CJRQ );
create table DGKH (
KHTYBH varchar(60) not null , /* 客户统一编号  */
ZZJGDM varchar(40) , /* 统一社会信用代码  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
KHMC varchar(200) , /* 名称  */
KHYWMC varchar(200) , /* 客户英文姓名  */
FRDB varchar(30) , /* 法人代表  */
FRDBZJLB varchar(60) , /* 证件类别  */
FRDBZJHM varchar(60) , /* 证件号码  */
CWRY varchar(100) , /* 姓名  */
CWRYZJLB varchar(60) , /* 证件类别  */
CWRYZJHM varchar(60) , /* 证件号码  */
JBCKZH varchar(60) , /* 账号  */
JBZHKHXMC varchar(200) , /* 名称  */
ZCZB decimal(16,2) , /* 金额  */
ZCDZ varchar(400) , /* 地址  */
LXDH varchar(30) , /* 电话  */
YYZZH varchar(60) , /* 营业执照号  */
YYZZYXJZRQ varchar(8) , /* 日期  */
JYFW varchar(1000) , /* 经营范围  */
CLRQ varchar(8) , /* 日期  */
SSXY varchar(100) , /* 所属行业  */
KHLB varchar(30) , /* 客户类别  */
DKZH varchar(60 ) , /* 贷款卡号  */
GSZH varchar(60 ) , /* 国税证号  */
DSZH varchar(60 ) , /* 地税证号  */
MGSKHTYBH varchar(60) , /* 客户统一编号  */
TYSXBZ varchar(4) , /* 是否标志  */
SXED decimal(16,2) , /* 额度   */
YYED decimal(16,2) , /* 额度   */
SSGSBZ varchar(4) , /* 是否标志  */
XYDJBH varchar(200) , /* 信用评级结果  */
ZCZBBZ varchar(3) , /* 币种  */
SSZBBZ varchar(3) , /* 币种  */
SSZB decimal(16,2) , /* 金额  */
ZZC decimal(16,2) , /* 金额  */
JZC decimal(16,2) , /* 金额  */
NSR decimal(16,2) , /* 金额  */
SCJLXDGXNY varchar(6) , /* 年月  */
CZHM varchar(30) , /* 传真号码  */
YGRS integer , /* 人数  */
XZQHDM varchar(20) , /* 行政区划代码  */
KHLX varchar(12) , /* 客户类型  */
FXYJXH varchar(200) , /* 风险预警信号  */
CJRQ varchar(8) not null  /* 日期  */
);


create index DGKH_idx0 on DGKH(KHTYBH ,CJRQ );
create table GDXX (
KHTYBH varchar(60) not null , /* 客户统一编号  */
ZZJGDM varchar(40) , /* 统一社会信用代码  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
GDMC varchar(200) , /* 名称  */
GDZJLB varchar(60) , /* 证件类别  */
GDZJHM varchar(60) not null , /* 证件号码  */
GDZT varchar(6) , /* 有效状态  */
CGBL decimal(16,2) , /* 比例  */
RGSJ varchar(8) , /* 日期  */
CJRQ varchar(8) not null  /* 日期  */
);


create index GDXX_idx0 on GDXX(KHTYBH ,GDZJHM ,CJRQ );
create table GLGX (
KHTYBH varchar(60) not null , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
GLRKHTYBH varchar(60) not null , /* 客户统一编号  */
KHSBM varchar(60) , /* 证件号码  */
KHLB varchar(30) , /* 客户类别  */
GLRSBM varchar(60) , /* 证件号码  */
GLRMC varchar(200) , /* 名称  */
GLRLB varchar(30) , /* 关联人类别  */
GXLX varchar(300) , /* 关系类型  */
GLGXZT varchar(6) , /* 有效状态  */
LRSJ varchar(8) , /* 日期  */
CJRQ varchar(8) not null  /* 日期  */
);


create index GLGX_idx0 on GLGX(KHTYBH ,GLRKHTYBH ,CJRQ );
create table XDHTB (
XDHTH varchar(100) not null , /* 合同号  */
ZHTH varchar(100) , /* 合同号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
KHMC varchar(200) , /* 名称  */
CPMC varchar(200) , /* 产品名称  */
DKXGZL varchar(30) , /* 贷款新规种类  */
XDYWZL varchar(100) , /* 贷款类型  */
BZ varchar(3) , /* 币种  */
JE decimal(16,2) , /* 金额  */
HTYDRQ varchar(8) , /* 日期  */
HTDQRQ varchar(8) , /* 日期  */
LLLX varchar(6) , /* 利率类型  */
JZLL decimal(16,2) , /* 基准利率  */
LLFD integer , /* 利率浮动  */
ZYDBFS varchar(60 ) , /* 主要担保方式  */
GHJLGH varchar(30) , /* 工号  */
DKQX integer , /* 贷款期限  */
FKFS varchar(12) , /* 放款方式  */
KJHSFS varchar(30) , /* 会计核算方式  */
DKYT varchar(400) , /* 贷款用途  */
DKTXDQ varchar(200) , /* 贷款投向地区  */
DKTXXY varchar(100) , /* 贷款投向行业  */
SFGJXZXY varchar(4) , /* 是否国家限制行业  */
CJRQ varchar(8) not null  /* 日期  */
);


create index XDHTB_idx0 on XDHTB(XDHTH ,CJRQ );
create table XMDKXXB (
XDHTH varchar(100) not null , /* 合同号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
JKRMC varchar(200) , /* 名称  */
XMMC varchar(100 ) , /* 项目名称  */
XMLX varchar(100) , /* 项目类型  */
SFYT varchar(4) , /* 是否标志  */
XMZTZ decimal(16,2) , /* 金额  */
BZ varchar(3) , /* 币种  */
ZBJ decimal(16,2) , /* 金额  */
XMDKJE decimal(16,2) , /* 金额  */
XMDKQX varchar(30) , /* 项目贷款期限  */
PWWH varchar(60 ) , /* 批文文号  */
LXPW varchar(60 ) , /* 立项批文  */
GHXKZBH varchar(60 ) , /* 规划许可证编号  */
JSYDXKZBH varchar(60 ) , /* 建设用地许可证编号  */
HPXKZBH varchar(60 ) , /* 环评许可证编号  */
SGXKZBH varchar(60 ) , /* 施工许可证编号  */
QTXKZ varchar(60 ) , /* 其他许可证  */
QTXKZBH varchar(60 ) , /* 其他许可证  */
KGRQ varchar(8) , /* 日期  */
CJRQ varchar(8) not null  /* 日期  */
);


create index XMDKXXB_idx0 on XMDKXXB(XDHTH ,CJRQ );
create table PJPMXXB (
PJHM varchar(60) not null , /* 票据号码  */
CPRBH varchar(60 ) , /* 出票人编号  */
FKXDM varchar(30) , /* 银行机构代码  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
PJLX varchar(30) , /* 票据类型  */
CPRQC varchar(200) , /* 名称  */
CPRZH varchar(60) , /* 账号  */
FKXMC varchar(200) , /* 名称  */
BZ varchar(3) , /* 币种  */
PMJE decimal(16,2) , /* 金额  */
QFRQ varchar(8) , /* 日期  */
PJDQRQ varchar(8) , /* 日期  */
SKRMC varchar(200) , /* 名称  */
SKRZH varchar(60) , /* 账号  */
SKRKHX varchar(30) , /* 银行机构代码  */
SYFPHM varchar(200) , /* 商业发票号码  */
SYFPBZ varchar(3) , /* 币种  */
SYFPJE decimal(16,2) , /* 金额  */
SYFPZL varchar(60) , /* 商业发票种类  */
CJRQ varchar(8) not null  /* 日期  */
);


create index PJPMXXB_idx0 on PJPMXXB(PJHM ,CJRQ );
create table DGBWSXYW (
XDJJH varchar(100) not null , /* 借据号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
KHTYBH varchar(60) , /* 客户统一编号  */
KHMC varchar(200) , /* 名称  */
XDHTH varchar(100) , /* 合同号  */
YXJGMC varchar(200) , /* 名称  */
MXKMBH varchar(60) , /* 明细科目编号  */
MXKMMC varchar(300) , /* 明细科目名称  */
BWYWPZ varchar(60) , /* 表外业务品种  */
BZ varchar(3) , /* 币种  */
JE decimal(16,2) , /* 金额  */
YE decimal(16,2) , /* 余额  */
DKQX integer , /* 贷款期限  */
SFDF varchar(4) , /* 是否标志  */
DKSJFFRQ varchar(8) , /* 日期  */
DKYSDQRQ varchar(8) , /* 日期  */
DKSJDQRQ varchar(8) , /* 日期  */
ZJRQ varchar(8) , /* 日期  */
DKWJFL varchar(6) , /* 贷款五级分类  */
SXFJE decimal(16,2) , /* 手续费  */
BZJBL decimal(16,2) , /* 比例  */
BZJBZ varchar(3) , /* 币种  */
BZJJE decimal(16,2) , /* 金额  */
BZJZH varchar(60) , /* 账号  */
PJHM varchar(60) , /* 票据号码  */
PMJE decimal(16,2) , /* 金额  */
SYFPHM varchar(200) , /* 商业发票号码  */
SYFPBZ varchar(3) , /* 币种  */
SYFPJE decimal(16,2) , /* 金额  */
SYFPZL varchar(60) , /* 商业发票种类  */
XDYGH varchar(30) , /* 工号  */
CJRQ varchar(8) not null  /* 日期  */
);


create index DGBWSXYW_idx0 on DGBWSXYW(XDJJH ,CJRQ );
create table MYRZYWXXB (
DGXDJJH varchar(100) not null , /* 借据号  */
XDHTH varchar(100) , /* 合同号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
JKRMC varchar(200) , /* 名称  */
ZZJGDM varchar(40) , /* 统一社会信用代码  */
MYRZPZ varchar(60 ) , /* 贸易融资品种  */
MYHTH varchar(100) , /* 合同号  */
BZ varchar(3) , /* 币种  */
MYHTZJE decimal(16,2) , /* 金额  */
BNYE decimal(16,2) , /* 余额  */
BWYE decimal(16,2) , /* 余额  */
YXGJYWBH varchar(30) , /* 银行国际业务编号  */
SYFPHM varchar(200) , /* 商业发票号码  */
SYFPBZ varchar(3) , /* 币种  */
SYFPJE decimal(16,2) , /* 金额  */
SYFPZL varchar(60) , /* 商业发票种类  */
XYZCDX varchar(200) , /* 名称  */
FFTZL varchar(30) , /* 福费廷种类  */
XYZBH varchar(30) , /* 信用证编号  */
XYZBZ varchar(3) , /* 币种  */
XYZJE decimal(16,2) , /* 金额  */
XYZKZRQ varchar(8) , /* 日期  */
XYZQXLX varchar(30) , /* 信用证期限类型  */
XYZXQ varchar(8) , /* 日期  */
CJRQ varchar(8) not null  /* 日期  */
);


create index MYRZYWXXB_idx0 on MYRZYWXXB(DGXDJJH ,CJRQ );
create table YTDK (
XDHTH varchar(100) not null , /* 合同号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
XYLX varchar(60) , /* 协议类型  */
ZBXXH varchar(30) , /* 银行机构代码  */
CDXXH varchar(400) , /* 代码集合  */
DLXXH varchar(30) , /* 银行机构代码  */
ZBXXM varchar(200) , /* 名称  */
CDXXM varchar(200) , /* 名称  */
DLXXM varchar(1000) , /* 名称集合  */
DLCDBZ varchar(60) , /* 代理参贷标志  */
JKRMC varchar(200) , /* 名称  */
BZ varchar(3) , /* 币种  */
SQDKZE decimal(16,2) , /* 金额  */
CDDKJE decimal(16,2) , /* 金额  */
SJCDDKJE decimal(16,2) , /* 金额  */
YFFDKJE decimal(16,2) , /* 金额  */
YFFCDDKJE decimal(16,2) , /* 金额  */
CDSYDKJE decimal(16,2) , /* 金额  */
XYQSRQ varchar(8) , /* 日期  */
XYZZRQ varchar(8) , /* 日期  */
XYZT varchar(60) , /* 协议状态  */
FHGY varchar(100) , /* 姓名  */
CJRQ varchar(8) not null  /* 日期  */
);


create index YTDK_idx0 on YTDK(XDHTH ,CJRQ );
create table WTDK (
XDJJH varchar(100) not null , /* 借据号  */
XDHTH varchar(100) , /* 合同号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
WTRKHTYBH varchar(60) , /* 客户统一编号  */
WTRKHMC varchar(200) , /* 名称  */
SYRMC varchar(200) , /* 名称  */
WTJJKHXH varchar(30) , /* 银行机构代码  */
WTJJKHXMC varchar(200) , /* 名称  */
WTJJZH varchar(60) , /* 账号  */
WTZHLX varchar(30) , /* 委托账号类型  */
WTJE decimal(16,2) , /* 金额  */
SJWTDKJE decimal(16,2) , /* 金额  */
WTDKYT varchar(400) , /* 贷款用途  */
SFSX varchar(4) , /* 是否标志  */
SXFFS varchar(60) , /* 手续费方式  */
SXFJE decimal(16,2) , /* 金额  */
XYQSRQ varchar(8) , /* 日期  */
XYDQRQ varchar(8) , /* 日期  */
JBRXM varchar(100) , /* 姓名  */
KHJLGH varchar(30) , /* 工号  */
JBJGMC varchar(200) , /* 名称  */
XYZT varchar(60) , /* 协议状态  */
CJRQ varchar(8) not null  /* 日期  */
);


create index WTDK_idx0 on WTDK(XDJJH ,CJRQ );
create table GRXDYWJJ (
XDJJH varchar(100) not null , /* 借据号  */
DKFHZH varchar(60) , /* 账号  */
KHTYBH varchar(60) , /* 客户统一编号  */
KHMC varchar(200) , /* 名称  */
XDHTH varchar(100) , /* 合同号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
KJHSFS varchar(30) , /* 会计核算方式  */
MXKMBH varchar(60) , /* 明细科目编号  */
YXJGMC varchar(200) , /* 名称  */
MXKMMC varchar(300) , /* 明细科目名称  */
XDYWZL varchar(100) , /* 信贷业务种类  */
BZ varchar(3) , /* 币种  */
JKJE decimal(16,2) , /* 金额  */
JKYE decimal(16,2) , /* 余额  */
DKQX integer , /* 贷款期限  */
ZQCS integer , /* 展期次数  */
ZQS integer , /* 期数  */
DQQS integer , /* 期数  */
FKFS varchar(12) , /* 放款方式  */
DKSJFFRQ varchar(8) , /* 日期  */
DKYSDQRQ varchar(8) , /* 日期  */
DKSJDQRQ varchar(8) , /* 日期  */
BNQXYE decimal(16,2) , /* 余额  */
BWQXYE decimal(16,2) , /* 余额  */
DKZT varchar(100) , /* 贷款状态  */
ZJRQ varchar(8) , /* 日期  */
DKLX varchar(100) , /* 贷款类型  */
DKRZZH varchar(60) , /* 账号  */
DKWJFL varchar(6) , /* 贷款五级分类  */
LLLX varchar(6) , /* 利率类型  */
JZLL decimal(16,2) , /* 基准利率  */
LLFD integer , /* 利率浮动  */
HKFS varchar(40) , /* 还款方式  */
HKZH varchar(60) , /* 账号  */
HKQD varchar(100) , /* 还款渠道  */
JXFS varchar(30) , /* 计息方式  */
BZJBL decimal(16,2) , /* 比例  */
BZJBZ varchar(3) , /* 币种  */
BZJJE decimal(16,2) , /* 金额  */
BZJZH varchar(60) , /* 账号  */
XDYXM varchar(100) , /* 姓名  */
XDYYGH varchar(30) , /* 工号  */
XZBZ varchar(4) , /* 现转标志  */
LJQKQS integer , /* 期数  */
LXQKQS integer , /* 期数  */
STZFBZ varchar(4) , /* 是否标志  */
CJRQ varchar(8) not null  /* 日期  */
);


create index GRXDYWJJ_idx0 on GRXDYWJJ(XDJJH ,CJRQ );
create table DGXDYWJJ (
XDJJH varchar(100) not null , /* 借据号  */
DKFHZH varchar(60) , /* 账号  */
KHTYBH varchar(60) , /* 客户统一编号  */
KHMC varchar(200) , /* 名称  */
XDHTH varchar(100) , /* 合同号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
YXJGMC varchar(200) , /* 名称  */
MXKMMC varchar(300) , /* 明细科目名称  */
XDYWZL varchar(100) , /* 信贷业务种类  */
BZ varchar(3) , /* 币种  */
JKJE decimal(16,2) , /* 金额  */
JKYE decimal(16,2) , /* 余额  */
DKQX integer , /* 贷款期限  */
ZQCS integer , /* 展期次数  */
ZQS integer , /* 期数  */
DQQS integer , /* 期数  */
FKFS varchar(12) , /* 放款方式  */
DKSJFFRQ varchar(8) , /* 日期  */
DKYSDQRQ varchar(8) , /* 日期  */
DKSJDQRQ varchar(8) , /* 日期  */
BNQXYE decimal(16,2) , /* 余额  */
BWQXYE decimal(16,2) , /* 余额  */
DKZT varchar(100) , /* 贷款状态  */
ZJRQ varchar(8) , /* 日期  */
DKLX varchar(100) , /* 贷款类型  */
DKRZZH varchar(60) , /* 账号  */
DKWJFL varchar(6) , /* 贷款五级分类  */
LLLX varchar(6) , /* 利率类型  */
JZLL decimal(16,2) , /* 利率  */
LLFD integer , /* 利率浮动  */
HKFS varchar(40) , /* 还款方式  */
HKZH varchar(60) , /* 账号  */
HKQD varchar(100) , /* 还款渠道  */
JXFS varchar(30) , /* 计息方式  */
BZJBL decimal(16,2) , /* 比例  */
BZJBZ varchar(3) , /* 币种  */
BZJJE decimal(16,2) , /* 金额  */
BZJZH varchar(60) , /* 账号  */
PJHM varchar(400) , /* 代码集合  */
PMJE decimal(16,2) , /* 金额  */
XDYXM varchar(100) , /* 姓名  */
XDYGH varchar(30) , /* 工号  */
XZBZ varchar(4) , /* 现转标志  */
LJQKQS integer , /* 期数  */
LXQKQS integer , /* 期数  */
CJRQ varchar(8) not null  /* 日期  */
);


create index DGXDYWJJ_idx0 on DGXDYWJJ(XDJJH ,CJRQ );
create table XDYWDBHT (
DBHTH varchar(100) not null , /* 合同号  */
JRXKZH varchar(30) , /* 金融许可证号  */
YXJGDM varchar(30) , /* 银行机构代码  */
NBJGH varchar(30) , /* 内部机构号  */
DBLX varchar(30) , /* 担保类型  */
DBHTLX varchar(30) , /* 担保合同类型  */
BZRLB varchar(6) , /* 保证人类别  */
BZRMC varchar(200) , /* 名称  */
ZJLB varchar(60) , /* 证件类别  */
ZJHM varchar(60) not null , /* 证件号码  */
BZRJZC decimal(16,2) , /* 金额  */
DBHTZT varchar(30) , /* 担保合同状态  */
DBHTQDRQ varchar(8) , /* 日期  */
DBHTSXRQ varchar(8) , /* 日期  */
DBHTDQRQ varchar(8) , /* 日期  */
DBBZ varchar(3) , /* 币种  */
DBZJE decimal(16,2) , /* 金额  */
DBWPXH varchar(1000) , /* 担保物品顺序  */
JLYGH varchar(30) , /* 工号  */
CJRQ varchar(8) not null  /* 日期  */
);


create index XDYWDBHT_idx0 on XDYWDBHT(DBHTH ,ZJHM ,CJRQ );
create table DBGX (
DBHTH varchar(100) not null , /* 合同号  */
BDBHTH varchar(100) not null , /* 合同号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
DBLX varchar(30) , /* 担保类型  */
DBJE decimal(16,2) , /* 金额  */
DBQSRQ varchar(8) , /* 日期  */
DBDQRQ varchar(8) , /* 日期  */
DBZT varchar(6) , /* 担保状态  */
JLDBYGH varchar(30) , /* 工号  */
CJRQ varchar(8) not null  /* 日期  */
);


create index DBGX_idx0 on DBGX(DBHTH ,BDBHTH ,CJRQ );
create table XDYWZHDYW (
ZHDYWBH varchar(60) not null , /* 质或抵押物编号  */
DBHTH varchar(100) not null , /* 合同号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
ZHDYWMC varchar(1000) , /* 质或抵押物名称  */
ZHDYWLX varchar(300) , /* 质或抵押物类型  */
DZYWZT varchar(30) , /* 抵质押物状态  */
ZHDYWZMJZ decimal(16,2) , /* 金额  */
BZ varchar(3) , /* 币种  */
YXRDJZ decimal(16,2) , /* 金额  */
PGJZ decimal(16,2) , /* 金额  */
PGRQ varchar(8) , /* 日期  */
PGJGMC varchar(200) , /* 名称  */
ZHDYL decimal(16,2) , /* 比例  */
DYWSYQRMC varchar(200) , /* 名称  */
YDYJZ decimal(16,2) , /* 金额  */
DJRQ varchar(8) , /* 日期  */
SWSQRQ varchar(8) , /* 日期  */
DJJG varchar(200) , /* 登记机构  */
CZJG varchar(30) , /* 银行机构代码  */
DBQSRQ varchar(8) , /* 日期  */
DBDQRQ varchar(8) , /* 日期  */
ZYPZZH varchar(60) , /* 账号  */
ZYPZLX varchar(60) , /* 质押票证类型  */
ZYPZHM varchar(300) , /* 质押票证号码  */
ZYPZJE decimal(16,2) , /* 金额  */
ZYPZQFJG varchar(30) , /* 银行机构代码  */
ZYPZKLRQ varchar(8) , /* 日期  */
BXDH varchar(300) , /* 保险单号  */
HBRQ varchar(8) , /* 日期  */
HBRYXM varchar(100) , /* 姓名  */
HBREXM varchar(100) , /* 姓名  */
QZDJHM varchar(300) , /* 权证登记号码  */
QZMC varchar(200) , /* 名称  */
QZYXDQRQ varchar(8) , /* 日期  */
DJYXZZRQ varchar(8) , /* 日期  */
SFNRBWHS varchar(4) , /* 是否标志  */
BWHSKSRQ varchar(8) , /* 日期  */
CJRQ varchar(8) not null  /* 日期  */
);


create index XDYWZHDYW_idx0 on XDYWZHDYW(ZHDYWBH ,DBHTH ,CJRQ );
create table XYZHTB (
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
YXJGMC varchar(200) , /* 名称  */
XYZHYBH varchar(100) not null , /* 合同号  */
XYZSQRBH varchar(60) not null , /* 客户统一编号  */
XYZSQRMC varchar(200) , /* 名称  */
MYHTBH varchar(100) , /* 合同号  */
HPMS varchar(200) , /* 货品描述  */
MYBZDM varchar(3) , /* 币种  */
MYHTJE decimal(16,2) , /* 金额  */
SYRMC varchar(200) , /* 名称  */
SYRGJDM varchar(60) , /* 国籍  */
TZHMC varchar(200) , /* 名称  */
XYZZL varchar(30) , /* 信用证种类  */
BZDM varchar(3) , /* 币种  */
XYZJE decimal(16,2) , /* 金额  */
XYZFKQXMS varchar(60) , /* 信用证付款期限描述  */
XYZZFLX varchar(60) , /* 信用证支付类型  */
DBHYBHXX varchar(100) , /* 合同号  */
QYRQ varchar(8) , /* 日期  */
CJRQ varchar(8) not null  /* 日期  */
);


create index XYZHTB_idx0 on XYZHTB(XYZHYBH ,XYZSQRBH ,CJRQ );
create table XYZMXB (
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
YXJGMC varchar(200) , /* 名称  */
XYZHYBH varchar(100) not null , /* 合同号  */
XYZBH varchar(30) not null , /* 信用证编号  */
KHTYBH varchar(60) not null , /* 客户统一编号  */
ZHMC varchar(200) , /* 账户名称  */
BZ varchar(3) , /* 币种  */
XYZJE decimal(16,2) , /* 金额  */
XYZYE decimal(16,2) , /* 金额  */
XYZKZRQ varchar(8) , /* 日期  */
XYZDQRQ varchar(8) , /* 日期  */
XYZCXRQ varchar(8) , /* 日期  */
XYZBJRQ varchar(8) , /* 日期  */
XYZYHJE decimal(16,2) , /* 金额  */
XYZYHYE decimal(16,2) , /* 金额  */
DKYE decimal(16,2) , /* 金额  */
XDZCFXFLDM varchar(6) , /* 贷款五级分类  */
CJRQ varchar(8) not null  /* 日期  */
);


create index XYZMXB_idx0 on XYZMXB(XYZHYBH ,XYZBH ,KHTYBH ,CJRQ );
create table JJKXX (
KH varchar(60) not null , /* 卡号  */
HQCKZH varchar(60) not null , /* 账号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
ZJLB varchar(60) , /* 证件类别  */
ZJHM varchar(60) , /* 证件号码  */
JJKCPMC varchar(200) , /* 名称  */
KPZT varchar(30) , /* 卡片状态  */
YGBZ varchar(4) , /* 是否标志  */
KKRQ varchar(8) , /* 日期  */
KKGYH varchar(30) , /* 柜员号  */
CJRQ varchar(8) not null  /* 日期  */
);


create index JJKXX_idx0 on JJKXX(KH ,HQCKZH ,CJRQ );
create table CZXX (
CZH varchar(60) not null , /* 账号  */
HQCKZH varchar(60) , /* 账号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
ZJLB varchar(60) , /* 证件类别  */
ZJHM varchar(60) , /* 证件号码  */
CZLX varchar(20) , /* 存折类型  */
CZZT varchar(30) , /* 存折状态  */
YGBZ varchar(4) , /* 是否标志  */
QYRQ varchar(8) , /* 日期  */
QYGYH varchar(30) , /* 柜员号  */
CJRQ varchar(8) not null  /* 日期  */
);


create index CZXX_idx0 on CZXX(CZH ,CJRQ );
create table SXXX (
SXXYH varchar(60) not null , /* 授信协议号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
FSRQ varchar(8) , /* 日期  */
KHMC varchar(200) , /* 名称  */
SXZL varchar(30) , /* 授信种类  */
SXXYMC varchar(400) , /* 协议名称  */
EDJE decimal(16,2) , /* 金额  */
BZ varchar(3) , /* 币种  */
SXRQ varchar(8) , /* 日期  */
SXZT varchar(6) , /* 有效状态  */
SXKSRQ varchar(8) , /* 日期  */
SXDQRQ varchar(8) , /* 日期  */
SCSXRQ varchar(8) , /* 日期  */
JCDYJ varchar(2000) , /* 决策单意见  */
ZZSPR varchar(30) , /* 最终审批人  */
SFXHED varchar(4) , /* 是否标志  */
SFLSED varchar(4) , /* 是否标志  */
SXYGH varchar(30) , /* 工号  */
CJRQ varchar(8) not null  /* 日期  */
);


create index SXXX_idx0 on SXXX(SXXYH ,CJRQ );
create table DKHX (
XDJJH varchar(100) not null , /* 借据号  */
XDHTH varchar(100) , /* 合同号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
KMGSJG varchar(30) , /* 银行机构代码  */
BZ varchar(3) , /* 币种  */
SHDKBJ decimal(16,2) , /* 金额  */
SHBNLX decimal(16,2) , /* 利息  */
SHBWLX decimal(16,2) , /* 利息  */
HXRQ varchar(8) not null , /* 日期  */
HXSHBJ decimal(16,2) , /* 金额  */
HXSHBNLX decimal(16,2) , /* 利息  */
HXSHBWLX decimal(16,2) , /* 利息  */
SHBZ varchar(4) , /* 是否标志  */
HXSHGYH varchar(30) , /* 柜员号  */
HXSHRQ varchar(8) not null , /* 日期  */
BZH varchar(200) , /* 备注  */
CJRQ varchar(8) not null  /* 日期  */
);


create index DKHX_idx0 on DKHX(XDJJH ,HXRQ ,HXSHRQ ,CJRQ );
create table DKZQ (
DKZQBH varchar(60) not null , /* 贷款展期编号  */
XDJJH varchar(100) , /* 借据号  */
XDHTH varchar(100) , /* 合同号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
ZQRQ varchar(8) , /* 日期  */
ZQDQRQ varchar(8) , /* 日期  */
ZQJE decimal(16,2) , /* 金额  */
YLL decimal(16,2) , /* 利率  */
LLLX varchar(6) , /* 利率类型  */
ZQJZLL decimal(16,2) , /* 利率  */
LLFD integer , /* 利率浮动  */
YHTH varchar(100) , /* 合同号  */
YJJH varchar(100) , /* 借据号  */
JYGYH varchar(30) , /* 柜员号  */
SQGYH varchar(30) , /* 柜员号  */
CJRQ varchar(8) not null  /* 日期  */
);


create index DKZQ_idx0 on DKZQ(DKZQBH ,CJRQ );
create table XDZCZR (
ZRHTH varchar(100) not null , /* 合同号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
JYDSBH varchar(60) , /* 客户统一编号  */
JYDSMC varchar(200) , /* 账户名称  */
XDJYLX varchar(60) , /* 交易类型  */
JYZCLX varchar(30) , /* 交易资产类型  */
BZ varchar(3) , /* 币种  */
ZRDKBJZE decimal(16,2) , /* 金额  */
ZRDKLXZE decimal(16,2) , /* 利息  */
ZRSXF decimal(16,2) , /* 手续费  */
ZRZJ decimal(16,2) , /* 金额  */
HGLL decimal(16,2) , /* 利率  */
ZRJGRQ varchar(8) , /* 日期  */
HGJZRQ varchar(8) , /* 日期  */
ZRHTQSRQ varchar(8) , /* 日期  */
ZRHTDQRQ varchar(8) , /* 日期  */
JYDSZZH varchar(60) , /* 账号  */
JYDSZZZHHM varchar(200) , /* 账户名称  */
JYDSXH varchar(30) , /* 银行机构代码  */
CJRQ varchar(8) not null  /* 日期  */
);


create index XDZCZR_idx0 on XDZCZR(ZRHTH ,CJRQ );
create table ZCZRGXB (
ZRHTH varchar(100) , /* 合同号  */
YXJGDM varchar(30) , /* 银行机构代码  */
XDJJH varchar(100) not null , /* 借据号  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
CJRQ varchar(8) not null  /* 日期  */
);


create index ZCZRGXB_idx0 on ZCZRGXB(XDJJH ,CJRQ );
create table DKWJXTBD (
TZRQ varchar(8) not null , /* 日期  */
XDJJH varchar(100) not null , /* 借据号  */
XDHTH varchar(100) , /* 合同号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
YXJGMC varchar(200) , /* 名称  */
YWJXT varchar(6) , /* 贷款五级分类  */
XWJXT varchar(6) , /* 贷款五级分类  */
BZ varchar(3) , /* 币种  */
ZRJE decimal(16,2) , /* 金额  */
ZCJE decimal(16,2) , /* 金额  */
KHMC varchar(200) , /* 名称  */
JBGYH varchar(30) , /* 工号  */
TZGYH varchar(30) , /* 工号  */
SQGYH varchar(30) , /* 工号  */
SPGYH varchar(30) , /* 工号  */
BDYY varchar(60) , /* 变动原因  */
BDFS varchar(30) , /* 变动方式  */
CJRQ varchar(8) not null  /* 日期  */
);


create index DKWJXTBD_idx0 on DKWJXTBD(TZRQ ,XDJJH ,CJRQ );
create table XYKXX (
KH varchar(60) not null , /* 卡号  */
XYKZH varchar(60) , /* 账号  */
KHTYBH varchar(60) , /* 客户统一编号  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
ZJLB varchar(60) , /* 证件类别  */
ZJHM varchar(60) , /* 证件号码  */
KPMC varchar(60) , /* 卡片名称  */
KPJB varchar(60) , /* 卡片级别  */
KPZT varchar(30) , /* 卡片状态  */
KZZMC varchar(1000) , /* 名称集合  */
YGKBZ varchar(4) , /* 是否标志  */
FSKBZ varchar(4) , /* 是否标志  */
ZKH varchar(60) , /* 卡号  */
NFBZ varchar(4) , /* 是否标志  */
BBXYED decimal(16,2) , /* 额度   */
WBXYED decimal(16,2) , /* 额度   */
WBBZ varchar(3) , /* 币种  */
BBXJZQED decimal(16,2) , /* 额度   */
WBXJZQED decimal(16,2) , /* 额度   */
ZKRQ varchar(8) , /* 日期  */
SLRQ varchar(8) , /* 日期  */
SLYGH varchar(30) , /* 工号  */
KKRQ varchar(8) , /* 日期  */
KKYGH varchar(30) , /* 工号  */
XKRQ varchar(8) , /* 日期  */
XKYGH varchar(30) , /* 工号  */
ZHZT varchar(60) , /* 账户状态  */
BBQXJE decimal(16,2) , /* 金额  */
BBXFJE decimal(16,2) , /* 金额  */
BBTZJE decimal(16,2) , /* 金额  */
WBXFJE decimal(16,2) , /* 金额  */
WBQXJE decimal(16,2) , /* 金额  */
WBTZJE decimal(16,2) , /* 金额  */
BBYE decimal(16,2) , /* 余额  */
WBYE decimal(16,2) , /* 余额  */
DJYE decimal(16,2) , /* 余额  */
BLJE decimal(16,2) , /* 金额  */
BNLJXFJE decimal(16,2) , /* 金额  */
LSED decimal(16,2) , /* 额度   */
DQQFJE decimal(16,2) , /* 金额  */
DBLX varchar(6) , /* 主要担保类型  */
DBSM varchar(400) , /* 担保说明  */
DKWJFL varchar(6) , /* 贷款五级分类  */
DQTZLX decimal(16,2) , /* 利息  */
ZHDHJYRQ varchar(8) , /* 日期  */
CJRQ varchar(8) not null  /* 日期  */
);


create index XYKXX_idx0 on XYKXX(KH ,CJRQ );
create table XYKZHJYMXB (
KH varchar(60) , /* 卡号  */
XYKZH varchar(60) , /* 账号  */
SFZH varchar(60) , /* 证件号码  */
YXJGDM varchar(30) , /* 银行机构代码  */
NBJGH varchar(30) , /* 内部机构号  */
JRXKZH varchar(30) , /* 金融许可证号  */
MXKMBH varchar(60) , /* 明细科目编号  */
MXKMMC varchar(300) , /* 明细科目名称  */
BZ varchar(3) , /* 币种  */
JYJZRQ varchar(8) not null , /* 日期  */
HXJYLSH varchar(60) not null , /* 核心交易流水号  */
KPJYLX varchar(60) , /* 交易类型  */
JYLX2 varchar(60) , /* 交易类型2  */
CHLB varchar(12) , /* 钞汇类别  */
XZBZ varchar(4) , /* 现转标志  */
JYJDBZ varchar(12) , /* 交易借贷标志  */
JYJE decimal(16,2) , /* 金额  */
KHSXFJE decimal(16,2) , /* 金额  */
JYQXRQ varchar(8) , /* 日期  */
JYFSRQ varchar(8) , /* 日期  */
JYZDRQ varchar(8) , /* 日期  */
DFZH varchar(60) , /* 账号  */
DFHM varchar(200) , /* 账户名称  */
SHBH varchar(200) , /* 商户编号  */
SHMC varchar(100) , /* 商户名称  */
SHMCCM varchar(4) , /* 商户MCC码  */
SHMCCMC varchar(50) , /* 商户MCC名称  */
FKHSXFL decimal(16,2) , /* 手续费率  */
SHDQ varchar(30) , /* 商户地区  */
FQFKBZ varchar(15) , /* 分期付款标志  */
FQJYLX varchar(60) , /* 分期交易类型  */
JYQD varchar(60) , /* 交易渠道  */
JYSJ varchar(6) , /* 时间  */
JYJGH varchar(30) , /* 银行机构代码  */
GZZXZ varchar(30) , /* 工作站性质  */
GZZBH varchar(30) , /* 工作站编号  */
ZY varchar(400) , /* 摘要  */
BZH varchar(200) , /* 备注  */
CJRQ varchar(8) not null  /* 日期  */
);


create index XYKZHJYMXB_idx0 on XYKZHJYMXB(JYJZRQ ,HXJYLSH ,CJRQ );
create table CKRJCQKB (
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
YXJGMC varchar(200) , /* 名称  */
KHTYBH varchar(60) not null , /* 客户统一编号  */
SFZH varchar(60) , /* 证件号码  */
FXFH varchar(30) , /* 内部机构号  */
CKRCSNY varchar(6) , /* 年月  */
CKRXB varchar(10) , /* 性别  */
JYCD varchar(30) , /* 学历  */
CKRZY varchar(80) , /* 职业  */
GZDW varchar(200) , /* 名称  */
GZXZ varchar(60) , /* 单位性质  */
SCHY varchar(100) , /* 所属行业  */
SFZXQYZHSYYZKH varchar(4) , /* 是否标志  */
SCFKRQ varchar(8) , /* 日期  */
SCFKRDYSR decimal(16,2) , /* 金额  */
SCFKED decimal(16,2) , /* 金额  */
SCFKHDZSXED decimal(16,2) , /* 金额  */
SCFKSYYXYKFKYHS decimal(16,2) , /* 数量  */
SCFKSYYTHSXJE decimal(16,2) , /* 金额  */
SCFKSQQD varchar(60) , /* 交易渠道  */
BZ varchar(4) , /* 是否标志  */
CJRQ varchar(8) not null  /* 日期  */
);


create index CKRJCQKB_idx0 on CKRJCQKB(KHTYBH ,CJRQ );
create table CKRDQSXQKB (
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
YXJGMC varchar(200) , /* 名称  */
KHTYBH varchar(60) not null , /* 客户统一编号  */
SFZH varchar(60) , /* 证件号码  */
DQSXED decimal(16,2) , /* 金额  */
DQKHDJ varchar(60) , /* 客户等级  */
DQKHLX varchar(60) , /* 信用卡客户类型  */
DQRDYSR decimal(16,2) , /* 金额  */
DMTZBJ decimal(16,2) , /* 金额  */
QZFQYE decimal(16,2) , /* 金额  */
DQYQQS integer , /* 期数  */
YQJE decimal(16,2) , /* 金额  */
WJFLZT varchar(6) , /* 贷款五级分类  */
JLGYPJEDSYL decimal(16,2) , /* 比例  */
JLGYPJHKL decimal(16,2) , /* 比例  */
ZJYCRHZXCXRQ varchar(8) , /* 日期  */
ZJYCRHZCXSYYXYKFXKHS decimal(16,2) , /* 数量  */
ZJYCRHZCXSYYTHSXJE decimal(16,2) , /* 金额  */
ZJYCXZSXRQ varchar(8) , /* 日期  */
XZSXLX varchar(60) , /* 信用卡授信类型  */
XZSXQKD decimal(16,2) , /* 金额  */
XZSXHED decimal(16,2) , /* 金额  */
XZSXSRDYSR decimal(16,2) , /* 金额  */
XZSXSHDZSED decimal(16,2) , /* 金额  */
XZSXSYYXYKFKYHS decimal(16,2) , /* 数量  */
XZSXSYYTHSXJE decimal(16,2) , /* 金额  */
BYLJXFJYL decimal(16,2) , /* 金额  */
BYLJQXZZJYL decimal(16,2) , /* 金额  */
BYLJFQJYL decimal(16,2) , /* 金额  */
BYLJSR decimal(16,2) , /* 金额  */
CJRQ varchar(8) not null  /* 日期  */
);


create index CKRDQSXQKB_idx0 on CKRDQSXQKB(KHTYBH ,CJRQ );
create table CKRFQYWQKB (
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
YXJGMC varchar(200) , /* 名称  */
KHTYBH varchar(60) not null , /* 客户统一编号  */
SFZH varchar(60) , /* 证件号码  */
BLFQSJ varchar(8) , /* 日期  */
FQLX varchar(60) , /* 业务类型  */
SFHGZXFQED varchar(4) , /* 是否标志  */
ZXFQSRDYSR decimal(16,2) , /* 金额  */
ZXFQSYYXYKFKYHS decimal(16,2) , /* 数量  */
ZXFQSXSYYTHSXJE decimal(16,2) , /* 金额  */
FQQS integer , /* 期数  */
FQJE decimal(16,2) , /* 金额  */
BLFQSCKRXHZSXED decimal(16,2) , /* 金额  */
FQED decimal(16,2) , /* 金额  */
FQSH  varchar(100) , /* 商户名称  */
SHMCCM varchar(4) , /* 商户MCC码  */
SHMCCMC varchar(50) , /* 商户MCC名称  */
FQZJZRJJKH varchar(60) , /* 卡号  */
CJRQ varchar(8) not null  /* 日期  */
);


create index CKRFQYWQKB_idx0 on CKRFQYWQKB(KHTYBH ,CJRQ );
create table ZCFZKMTJB (
JRJGDM varchar(30) , /* 金融机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) not null , /* 内部机构号  */
TJKMBH varchar(20) not null , /* 统计科目编号  */
TJKMMC varchar(120) , /* 统计科目名称  */
TJKMJE decimal(16,2) , /* 金额  */
QXLX varchar(6) not null , /* 期限类型  */
TJRQ varchar(8) not null , /* 日期  */
BZ varchar(3) not null , /* 币种  */
DQMC varchar(60) , /* 地区名称  */
XZQHDM varchar(20) , /* 行政区划代码  */
CJRQ varchar(8) not null  /* 日期  */
);


create index ZCFZKMTJB_idx0 on ZCFZKMTJB(NBJGH ,TJKMBH ,QXLX ,TJRQ ,BZ ,CJRQ );
create table ZJJYXXB (
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
MXKMBH varchar(60) , /* 明细科目编号  */
YXJGMC varchar(200) , /* 名称  */
MXKMMC varchar(300) , /* 明细科目名称  */
JYBH varchar(40) not null , /* 交易编号  */
LCCPDJBM varchar(30) , /* 产品登记编码  */
JYLX varchar(6) , /* 资金交易类型  */
JYZL varchar(60) , /* 资金交易子类  */
JRGJBH varchar(60) not null , /* 金融工具编号  */
JYZHLX varchar(12) , /* 账户类型  */
HTH varchar(100) , /* 合同号  */
HTJE decimal(16,2) , /* 金额  */
BZ varchar(3) , /* 币种  */
JCZCKHMC varchar(200) , /* 名称  */
JCZCSSHY varchar(100) , /* 所属行业  */
JCZCSFWBHKH varchar(4) , /* 是否标志  */
JCZCZXFS varchar(30) , /* 增信方式  */
JCZCZXR varchar(200) , /* 名称  */
JYGY varchar(100) , /* 姓名  */
SPR varchar(100) , /* 姓名  */
JYDSDM varchar(60) , /* 客户统一编号  */
JYDSMC varchar(200) , /* 账户名称  */
JYRQ varchar(8) , /* 日期  */
QSRQ varchar(8) , /* 日期  */
DQRQ varchar(8) , /* 日期  */
MMBZ varchar(6) , /* 买卖标志  */
JYQBZ varchar(6) , /* 即远期标志  */
MRBZ varchar(3) , /* 币种  */
MRJE decimal(16,2) , /* 金额  */
MCBZ varchar(3) , /* 币种  */
MCJE decimal(16,2) , /* 金额  */
CJJG varchar(100 ) , /* 成交价格  */
YWZT varchar(20) , /* 交易状态  */
FHRQ varchar(8) , /* 日期  */
QXRQ varchar(8) , /* 日期  */
SJJGRQ varchar(8) , /* 日期  */
QSBZ varchar(4) , /* 是否标志  */
JFZH varchar(60) , /* 账号  */
DFZH varchar(60) , /* 账号  */
JFJE decimal(16,2) , /* 金额  */
DFJE decimal(16,2) , /* 金额  */
JFBZ varchar(3) , /* 币种  */
DFBZ varchar(3) , /* 币种  */
JFLL decimal(16,2) , /* 利率  */
DFLL decimal(16,2) , /* 利率  */
BZJJYBZ varchar(4) , /* 是否标志  */
GLBZJZH varchar(60) , /* 账号  */
GLYWBH varchar(40) , /* 交易编号  */
WBGLXTMC varchar(100) , /* 系统名  */
CJRQ varchar(8) not null  /* 日期  */
);


create index ZJJYXXB_idx0 on ZJJYXXB(JYBH ,JRGJBH ,CJRQ );
create table JRGJXXB (
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
YXJGMC varchar(200) , /* 名称  */
ZQMC varchar(60) , /* 金融工具名称  */
JRGJBH varchar(60) not null , /* 金融工具编号  */
ZCLX varchar(60) , /* 资产类型  */
BZ varchar(3) , /* 币种  */
FXJG varchar(200) , /* 名称  */
YXCZQYDM varchar(60) , /* 客户统一编号  */
FXGB varchar(2) , /* 国别代码  */
DBJG varchar(200) , /* 名称  */
CPPJ varchar(20) , /* 评级  */
PJJG varchar(200) , /* 名称  */
FXZTPJ varchar(20) , /* 评级  */
JYZHLX varchar(12) , /* 账户类型  */
PMLL decimal(16,2) , /* 利率  */
FXJGE decimal(16,2) , /* 金额  */
FXRQ varchar(8) , /* 日期  */
SSRQ varchar(8) , /* 日期  */
QXRQ varchar(8) , /* 日期  */
DQRQ varchar(8) , /* 日期  */
LLLX varchar(6) , /* 利率类型  */
HQBS varchar(4) , /* 是否标志  */
ZJPGJG decimal(16,2) , /* 金额  */
PGJGSJ varchar(8) , /* 日期  */
YE decimal(16,2) , /* 金额  */
CJRQ varchar(8) not null  /* 日期  */
);


create index JRGJXXB_idx0 on JRGJXXB(JRGJBH ,CJRQ );
create table HLXXB (
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
YXJGMC varchar(200) , /* 名称  */
WB varchar(3) not null , /* 币种  */
BB varchar(3) not null , /* 币种  */
ZJJ decimal(16,2) , /* 汇率  */
JZJ decimal(16,2) , /* 汇率  */
HLRQ varchar(8) not null , /* 日期  */
CJRQ varchar(8) not null  /* 日期  */
);


create index HLXXB_idx0 on HLXXB(WB ,BB ,HLRQ ,CJRQ );
create table ZYZJJYXXB (
CJRQ varchar(8) not null , /* 日期  */
JDKSR varchar(8) , /* 日期  */
JDJSR varchar(8) , /* 日期  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
NBJGH varchar(30) , /* 内部机构号  */
YXJGMC varchar(200) , /* 名称  */
HNSSBM varchar(60) , /* 所属部门  */
ZHLX varchar(12) , /* 账户类型  */
JYBH varchar(40) not null , /* 交易编号  */
YWZL varchar(60) , /* 业务中类  */
YWXL varchar(60) , /* 业务小类  */
YHCP varchar(200) , /* 产品名称  */
BZ varchar(3) , /* 币种  */
JYDSBH varchar(60) , /* 客户统一编号  */
JYDSJRJGXKZH varchar(30) , /* 金融许可证号  */
ZZJGDM varchar(40) , /* 统一社会信用代码  */
NSSBM varchar(30) , /* 纳税识别码  */
JYDSMC varchar(200) , /* 账户名称  */
JYDSGJ varchar(60) , /* 国籍  */
JYDSHY varchar(100) , /* 所属行业  */
JYDSPJ varchar(20) , /* 评级  */
JYDSPJJG varchar(200) , /* 名称  */
JCZCBH varchar(60) , /* 基础资产编号  */
JCZCMC varchar(200) , /* 名称  */
JCZCPJ varchar(20) , /* 评级  */
JCZCPJJG varchar(200) , /* 名称  */
JCZCKHBH varchar(60) , /* 客户统一编号  */
JCZCKHMC varchar(200) , /* 名称  */
JCZCKHGJ varchar(60) , /* 国籍  */
JCZCKHPJ varchar(20) , /* 评级  */
JCKHPJJG varchar(200) , /* 名称  */
JCZCHKHHY varchar(100) , /* 所属行业  */
ZZTXLX varchar(30) , /* 投向类型  */
ZZTXHY varchar(100) , /* 所属行业  */
CHJRQ varchar(8) , /* 日期  */
CJSJ varchar(8) , /* 日期  */
JGRQ varchar(8) , /* 日期  */
QXR varchar(8) , /* 日期  */
DQR varchar(8) , /* 日期  */
JYFX varchar(12) , /* 交易借贷标志  */
CJMZ decimal(16,2) , /* 金额  */
CJJE decimal(16,2) , /* 金额  */
NHLL decimal(16,2) , /* 利率  */
SPR varchar(100) , /* 姓名  */
JYY varchar(30) , /* 工号  */
BFQSZH varchar(60) , /* 账号  */
BFQSHH varchar(30) , /* 银行机构代码  */
DFQSZH varchar(60) , /* 账号  */
DFQSHH varchar(30)  /* 银行机构代码  */
);


create index ZYZJJYXXB_idx0 on ZYZJJYXXB(CJRQ ,JYBH );
create table ZYZJYWYEB (
CJRQ varchar(8) not null , /* 日期  */
CLRQ varchar(8) , /* 日期  */
YXJGDM varchar(30) , /* 银行机构代码  */
JRXKZH varchar(30) , /* 金融许可证号  */
YXJGMC varchar(200) , /* 名称  */
NBJGH varchar(30) , /* 内部机构号  */
HNSSBM varchar(60) , /* 所属部门  */
JYZHLX varchar(12) , /* 账户类型  */
JYBH varchar(40) not null , /* 交易编号  */
YWZL varchar(60) , /* 业务中类  */
YWXL varchar(60) , /* 业务小类  */
YHCP varchar(200) , /* 产品名称  */
YWYE decimal(16,2) , /* 金额  */
BZ varchar(3) , /* 币种  */
JCZCBH varchar(60) , /* 基础资产编号  */
JCZCMC varchar(200) , /* 名称  */
JCZCPJ varchar(20) , /* 评级  */
JCZCPJJG varchar(200) , /* 名称  */
JCZCKHBH varchar(60) , /* 客户统一编号  */
JCZCKHMC varchar(200) , /* 名称  */
JCZCKHGJ varchar(60) , /* 国籍  */
JCZCKHPJ varchar(20) , /* 评级  */
JCKHPJJG varchar(200) , /* 名称  */
JCZCHKHHY varchar(100) , /* 所属行业  */
ZZTXLX varchar(30) , /* 投向类型  */
ZZTXHY varchar(100) , /* 所属行业  */
XYFXQZ decimal(16,2) , /* 信用风险权重  */
WJFL varchar(6) , /* 贷款五级分类  */
JZZB decimal(16,2) , /* 金额  */
QXR varchar(8) , /* 日期  */
DQR varchar(8) , /* 日期  */
JYFX varchar(12) , /* 交易借贷标志  */
SYMZ decimal(16,2) , /* 金额  */
ZMYE decimal(16,2) , /* 金额  */
WYJE decimal(16,2) , /* 金额  */
NHLL decimal(16,2) , /* 利率  */
SPR varchar(100) , /* 姓名  */
JYY varchar(30)  /* 工号  */
);


create index ZYZJYWYEB_idx0 on ZYZJYWYEB(CJRQ ,JYBH );
create table LCCPZTB (
CPID varchar(30) , /* 理财中心ID  */
CPDJBM varchar(30) not null , /* 产品登记编码  */
CPMC varchar(60) , /* 金融工具名称  */
FXJGDM varchar(30) , /* 发行机构代码  */
FXJGMC varchar(200) , /* 名称  */
LJSGJE decimal(16,2) , /* 金额（与币种对应）  */
LJSGFE decimal(16,2) , /* 份额或资产数量  */
LJDFJE decimal(16,2) , /* 金额（与币种对应）  */
LJDFSYJE decimal(16,2) , /* 金额（与币种对应）  */
LJSHFE decimal(16,2) , /* 份额或资产数量  */
CPTJRZT varchar(30) , /* 产品状态  */
CPCXYE decimal(16,2) , /* 金额  */
CSJZ decimal(16,2) , /* 净值  */
CPJZ decimal(16,2) , /* 净值  */
LJJZ decimal(16,2) , /* 净值  */
JZBZ varchar(3) , /* 币种  */
ZSRMBCSJZ decimal(16,2) , /* 净值  */
ZSRMBJZ decimal(16,2) , /* 净值  */
ZSRMBLJJZ decimal(16,2) , /* 净值  */
SXSYL decimal(16,2) , /* 百分比  */
ZXYQSYL decimal(16,2) , /* 百分比  */
YHSXSY decimal(16,2) , /* 金额  */
CPTJR varchar(8) not null , /* 日期  */
KFSCPYBXZCQMCCZB decimal(16,2) , /* 百分比  */
FBSCPZQLZCPJQXCPB decimal(16,2) , /* 百分比  */
FBZQZCCCBL decimal(16,2)  /* 百分比  */
);


create index LCCPZTB_idx0 on LCCPZTB(CPDJBM ,CPTJR );
create table LCCPXXB (
CPID varchar(30) , /* 理财中心ID  */
CPDJBM varchar(30) not null , /* 产品登记编码  */
LCCPDM varchar(100) , /* 产品代码  */
HNBZM varchar(30) , /* 行内标识码  */
CPMC varchar(60) , /* 金融工具名称  */
CPPP varchar(30) , /* 产品品牌  */
FXJGDM varchar(30) , /* 发行机构代码  */
FXJGMC varchar(200) , /* 名称  */
FXJGLX varchar(30) , /* 理财产品发行机构类型  */
CPQC integer , /* 产品期次  */
CPSYLX varchar(30) , /* 理财产品收益特征  */
CPQX varchar(30) , /* 期限  */
CPFXDJ varchar(30) , /* 理财产品风险等级  */
MBKHLX varchar(30) , /* 投资者类型  */
ZJTXDQ varchar(15) , /* 资金投向地区  */
CPYZMS varchar(30) , /* 产品运作模式  */
KJHSFS varchar(30) , /* 会计核算方式  */
CPZCPZFS varchar(30) , /* 产品资产配置方式  */
CPGLMS varchar(30) , /* 产品管理模式  */
SJGLR varchar(200) , /* 名称  */
GLFS varchar(30 ) , /* 管理方式  */
CPSPRSFZH varchar(60) , /* 证件号码  */
CPSPRXM varchar(100) , /* 姓名  */
CPSJRSFZH varchar(60) , /* 证件号码  */
CPSJRXM varchar(100) , /* 姓名  */
TZJLSFZH varchar(60) , /* 证件号码  */
TZJLXM varchar(100) , /* 姓名  */
CPDJFS varchar(30) , /* 产品定价方式  */
TZZCLX varchar(30) , /* 投资类型  */
JGXCPGGBD varchar(300) , /* 挂钩标的  */
HZMS varchar(30) , /* 合作模式  */
HZJGMC varchar(200) , /* 名称  */
TZZCZLJBL varchar(2000) , /* 投资资产种类及比例  */
SFYYQSYL varchar(4) , /* 是否标志  */
SFYSYLCSYJ varchar(4) , /* 是否标志  */
MJBZ varchar(3) , /* 币种  */
DFBJBZ varchar(3) , /* 币种  */
DFSYBZ varchar(3) , /* 币种  */
TZBJDZR varchar(4) , /* 到账日  */
TZSYDZR varchar(4) , /* 到账日  */
FXJGTQZZQBZ varchar(4) , /* 是否标志  */
KHSHQBZ varchar(4) , /* 是否标志  */
CPZXBZ varchar(4) , /* 是否标志  */
CPZXXS varchar(12) , /* 产品增信形式  */
SFWJGHCP varchar(4) , /* 是否标志  */
CJLB varchar(30) , /* 层级类别  */
SYLFDSM varchar(300) , /* 理财业务备注  */
KFMS varchar(30) , /* 开放模式  */
GLKFZQ varchar(30) , /* 规律开放周期  */
QTGLKFZQ integer , /* 天数  */
JJRSFKF varchar(4) , /* 是否标志  */
PJKFCS decimal(16,2) , /* 平均开放次数  */
KFQYW varchar(30) , /* 开放期业务  */
MJQSRQ varchar(8) , /* 日期  */
MJJSRQ varchar(8) , /* 日期  */
CPQSRQ varchar(8) , /* 日期  */
CPZZRQ varchar(8) , /* 日期  */
CPSJZZRQ varchar(8) , /* 日期  */
BGDJR varchar(8) , /* 日期  */
FXDJR varchar(8) , /* 日期  */
MJDJR varchar(8) , /* 日期  */
CPZT varchar(30) , /* 产品状态  */
CPXSQY varchar(2000) , /* 产品销售区域  */
SFYQTJGDX varchar(4) , /* 是否标志  */
JNTGJGDM varchar(30) , /* 发行机构代码  */
JNTGJGMC varchar(300) , /* 托管机构名称  */
JWTGJGGB varchar(2) , /* 国别代码  */
JWTGJGMC varchar(200) , /* 名称  */
LCCPZJTGZH varchar(60) , /* 账号  */
LCCPZJTGZHU varchar(200) , /* 账户名称  */
SFXCP varchar(4) , /* 是否标志  */
CPMJFS varchar(30) , /* 产品募集方式  */
CPTZXZ varchar(30) , /* 产品投资性质  */
SFSZZDCYQX varchar(4) , /* 是否标志  */
ZDCYQX integer , /* 天数  */
ZDCYQHSFZYSH varchar(4) , /* 是否标志  */
SFWXJGLLLCCP varchar(4) , /* 是否标志  */
YJBJJZSX decimal(16,2) , /* 百分比  */
YJBJJZXX decimal(16,2) , /* 百分比  */
YJBJJZSM varchar(300) , /* 理财业务备注  */
TZGLFL decimal(16,2) , /* 百分比  */
SFJRTYZS varchar(4) , /* 是否标志  */
SBQYJKHZGNSYL decimal(16,2) , /* 百分比  */
SBQYJKHZDNSYL decimal(16,2) , /* 百分比  */
FXQYJKHZGNSYL decimal(16,2) , /* 百分比  */
FXQYJKHZDNSYL decimal(16,2) , /* 百分比  */
FXQYJPJSYL decimal(16,2) , /* 百分比  */
TGFL decimal(16,2) , /* 百分比  */
JHMJJE decimal(16,2) , /* 金额（与币种对应）  */
SJMJJE decimal(16,2) , /* 金额  */
YHSJSXSR decimal(16,2) , /* 金额  */
DFKHSY decimal(16,2) , /* 金额  */
DFKHZJE decimal(16,2) , /* 金额  */
KHSJNHSYL decimal(16,2) , /* 百分比  */
CPSJNHSYL decimal(16,2) , /* 百分比  */
CPTJR varchar(8) not null  /* 日期  */
);


create index LCCPXXB_idx0 on LCCPXXB(CPDJBM ,CPTJR );
create table LCCPDCCCXXB (
NY varchar(6) not null , /* 年月  */
CPID varchar(30) , /* 理财中心ID  */
CPDJBM varchar(30) not null , /* 产品登记编码  */
CPMC varchar(60) , /* 金融工具名称  */
FXJGDM varchar(30) , /* 发行机构代码  */
FXJGMC varchar(200) , /* 名称  */
FXJGLX varchar(30) , /* 理财产品发行机构类型  */
ZCID varchar(30) , /* 理财中心ID  */
ZJHJJTZ varchar(30) , /* 直接或间接标志  */
GCJHMC varchar(800) , /* 各层名称  */
GCJHLX varchar(300) , /* 中间层资产类型  */
HNZCFZBM varchar(40) not null , /* 编码  */
ZCFZDJBM varchar(30) , /* 资产或交易登记编码  */
BZ varchar(3) , /* 币种  */
ZCFZLBYJ varchar(30) , /* 资产类别（一级）  */
ZCFZLBEJ varchar(30) , /* 资产类别（二级）  */
ZCMC varchar(60) , /* 金融工具名称  */
DM varchar(30) , /* 统一代码  */
HY varchar(100) , /* 所属行业  */
JYLTCS varchar(30) , /* 流通场所  */
LLSYL decimal(16,2) , /* 百分比  */
SYQX integer , /* 天数  */
ZCPJ varchar(30) , /* 综合评级  */
ZCLXXF varchar(100) , /* 资产类别（三级）  */
LCCPCYDCZCZSRMBJE decimal(16,2) , /* 金额  */
BZ varchar(300)  /* 理财业务备注  */
);


create index LCCPDCCCXXB_idx0 on LCCPDCCCXXB(NY ,CPDJBM ,HNZCFZBM );
create table FBZCMXXXB (
NF integer not null , /* 年份  */
YF integer not null , /* 月份  */
ZCID varchar(30) , /* 理财中心ID  */
FXJGDM varchar(30) not null , /* 发行机构代码  */
FXJGMC varchar(200) , /* 名称  */
FXJGLX varchar(30) , /* 理财产品发行机构类型  */
HNZCFZBM varchar(40) not null , /* 编码  */
ZCFZDJBM varchar(30) , /* 资产或交易登记编码  */
BZ varchar(3) , /* 币种  */
ZCFZLBEJ varchar(30) , /* 资产类别（二级）  */
SSYQLX varchar(30) , /* 收/受益权类型  */
SFSYMRFS varchar(4) , /* 是否标志  */
MC varchar(60) , /* 金融工具名称  */
QXR varchar(8) , /* 日期  */
DQR varchar(8) , /* 日期  */
FDDQR varchar(8) , /* 日期  */
SFYYQSYL varchar(4) , /* 是否标志  */
FEMZ decimal(16,2) , /* 单价  */
JXLX varchar(30) , /* 计息类型  */
FXPL integer , /* 月数  */
HBFXQKSM varchar(300) , /* 理财业务备注  */
JXJC varchar(30 ) , /* 计息基础  */
GZFXBZ varchar(4) , /* 是否标志  */
LXFBFS varchar(30) , /* 利息分布方式  */
JZLLZL varchar(40) , /* 基准利率种类  */
SFYFDYZ varchar(4) , /* 是否标志  */
FDYZ decimal(16,2) , /* 百分比  */
JGDC varchar(30) , /* 结构档次  */
HBFS varchar(30) , /* 还本方式  */
FQHBTKBZ varchar(30) , /* 分期还本条款标识  */
JCZCLX varchar(300) , /* 理财业务备注  */
CESYFPBL decimal(16,2) , /* 百分比  */
LC integer , /* 利率浮动  */
RZR varchar(200) , /* 名称  */
RZRNBXYPJ varchar(30) , /* 内部评级  */
WBPJJGMCJDRZRPJJG varchar(20) , /* 评级  */
RZRLXGM varchar(30 ) , /* 类型（按规模划分）  */
RZRLXJS varchar(30 ) , /* 类型（按技术领域划分）  */
RZRLXJJ varchar(30 ) , /* 类型（按经济类型划分）  */
RZXM varchar(100 ) , /* 项目名称  */
RZRSSHY varchar(100) , /* 贷款投向行业  */
RZXMSSHY varchar(100) , /* 贷款投向行业  */
XMSFSYZDJKHYHLY varchar(4) , /* 是否标志  */
ZDJKHYHLYLB varchar(30 ) , /* 重点监控类别  */
ZDJKHYHLYLBSM varchar(4) , /* 是否标志  */
DBFS varchar(30) , /* 担保方式  */
DBQKSM varchar(300) , /* 理财业务备注  */
DZYWLX varchar(30) , /* 抵质押物类型  */
DZYWJZ decimal(16,2) , /* 金额  */
DBXZ varchar(30) , /* 担保性质  */
DBRYRZRGX varchar(30) , /* 担保人与融资人关系  */
ZXJGDM varchar(40) , /* 统一社会信用代码  */
ZXJGMC varchar(200) , /* 名称  */
RZRZTPJ varchar(30) , /* 外部评级  */
ZCNBPJ varchar(30) , /* 内部评级  */
ZCWBPJ varchar(30) , /* 外部评级  */
HQLX varchar(300) , /* 含权类型  */
XZQ varchar(300) , /* 理财业务备注  */
XQTJSM varchar(300) , /* 理财业务备注  */
XQFS varchar(30) , /* 行权方式  */
GDXQR varchar(8) , /* 日期  */
SCXQRQ varchar(8) , /* 日期  */
XQZQ integer , /* 天数  */
XQJG decimal(16,2) , /* 单价  */
YXTKLX varchar(30) , /* 永续条款类型  */
LXDYTKLX varchar(30) , /* 利息递延条款类型  */
DYLXJXFS varchar(4) , /* 是否标志  */
SCCDJRQ varchar(8) , /* 日期  */
CDJZQ integer , /* 天数  */
BGSHBZ varchar(4) , /* 是否标志  */
BFSHBL decimal(16,2) , /* 百分比  */
RZRSSDQ varchar(30) , /* 行政区划  */
FYQKSM varchar(300) , /* 理财业务备注  */
RZRZZJGSHXYDM varchar(40) , /* 统一社会信用代码  */
XMSYL decimal(16,2) , /* 百分比  */
JE decimal(16,2) , /* 金额（与币种对应）  */
LCCPCYDCZCZSRMBJE decimal(16,2)  /* 金额  */
);


create index FBZCMXXXB_idx0 on FBZCMXXXB(NF ,YF ,FXJGDM ,HNZCFZBM );
create table QTFBZCMXXXB (
NF integer not null , /* 年份  */
YF integer not null , /* 月份  */
ZCID varchar(30) , /* 理财中心ID  */
FXJGDM varchar(30) not null , /* 发行机构代码  */
FXJGMC varchar(200) , /* 名称  */
FXJGLX varchar(30) , /* 理财产品发行机构类型  */
HNZCFZBM varchar(40) not null , /* 编码  */
ZCFZDJBM varchar(30) , /* 资产或交易登记编码  */
BZ varchar(3) , /* 币种  */
ZCFZLBEJ varchar(30) , /* 资产类别（二级）  */
MC varchar(60) , /* 金融工具名称  */
HNZCLBSM varchar(300) , /* 理财业务备注  */
QXR varchar(8) , /* 日期  */
DQR varchar(8) , /* 日期  */
SSGJHDQ varchar(2) , /* 国别代码  */
SFYYQSYL varchar(4) , /* 是否标志  */
FXPL integer , /* 月数  */
RZR varchar(200) , /* 名称  */
RZRZZJGDM varchar(40) , /* 统一社会信用代码  */
WBPJJGMCJDRZRPJJG varchar(20) , /* 评级  */
RZRLXGM varchar(30 ) , /* 类型（按规模划分）  */
RZRLXJS varchar(30 ) , /* 类型（按技术领域划分）  */
RZRLXJJ varchar(30 ) , /* 类型（按经济类型划分）  */
RZXM varchar(100 ) , /* 项目名称  */
RZRSSHY varchar(100) , /* 贷款投向行业  */
RZXMSSHY varchar(100) , /* 贷款投向行业  */
XMSFSYZDJKHYHLY varchar(4) , /* 是否标志  */
ZDJKHYHLYLB varchar(30 ) , /* 重点监控类别  */
ZDJKHYHLYLBSM varchar(300) , /* 理财业务备注  */
DYZCWBPJ varchar(30) , /* 外部评级  */
DBFS varchar(30) , /* 担保方式  */
DZYWLX varchar(30) , /* 抵质押物类型  */
DZYWJZ decimal(16,2) , /* 金额  */
DBXZ varchar(30) , /* 担保性质  */
DBRYRZRGX varchar(30) , /* 担保人与融资人关系  */
XMSYLLL decimal(16,2) , /* 百分比  */
JE decimal(16,2) , /* 金额（与币种对应）  */
LCCPCYDCZCZSRMBJE decimal(16,2)  /* 金额  */
);


create index QTFBZCMXXXB_idx0 on QTFBZCMXXXB(NF ,YF ,FXJGDM ,HNZCFZBM );
create table LCCPZCJYXXB (
JYR varchar(8) , /* 日期  */
CPID varchar(30) , /* 理财中心ID  */
CPDJBM varchar(30) not null , /* 产品登记编码  */
CPMC varchar(60) , /* 金融工具名称  */
FXJGDM varchar(30) not null , /* 发行机构代码  */
FXJGMC varchar(200) , /* 名称  */
FXJGLX varchar(30) , /* 理财产品发行机构类型  */
JYDJBM varchar(30) , /* 资产或交易登记编码  */
HNJYBM varchar(40) not null , /* 编码  */
JYLX varchar(100) not null , /* 资金流动类型  */
JYDSF varchar(200) , /* 名称  */
JYDSFLX varchar(100) , /* 对手方类型  */
BZ varchar(3) , /* 币种  */
ZCID varchar(30) , /* 理财中心ID  */
HNZCFZBM varchar(40) not null , /* 编码  */
ZCFZDJBM varchar(30) , /* 资产或交易登记编码  */
ZCFZLBYJ varchar(30) , /* 资产类别（一级）  */
ZCFZLBEJ varchar(30) , /* 资产类别（二级）  */
JYLTCS varchar(30) , /* 流通场所  */
ZCMC varchar(60) , /* 金融工具名称  */
HY varchar(100) , /* 所属行业  */
FSJE decimal(16,2) , /* 金额（与币种对应）  */
ZSRMBJE decimal(16,2) , /* 金额  */
SL decimal(16,2) , /* 份额或资产数量  */
DWCJQJ decimal(16,2) , /* 单价  */
DWCJJJ decimal(16,2) , /* 单价  */
DQSYL decimal(16,2) , /* 百分比  */
ZCJLFS varchar(30) , /* 资产计量方式  */
BZ varchar(300)  /* 理财业务备注  */
);


create index LCCPZCJYXXB_idx0 on LCCPZCJYXXB(CPDJBM ,FXJGDM ,HNJYBM ,JYLX ,HNZCFZBM );
