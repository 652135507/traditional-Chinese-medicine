create table JGXXB (
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
NBJGH  varchar2(30)  not null  ,  /* 内部机构号  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
JGLB  varchar2(30)   ,  /* 机构类别  */
YZBM  varchar2(6)   ,  /* 邮政编码  */
WDH  varchar2(30)   ,  /* 网点号  */
YYZT  varchar2(9)   ,  /* 营业状态  */
CLSJ  varchar2(8)   ,  /* 成立时间  */
JGGZKSSJ  varchar2(6)   ,  /* 机构工作开始时间  */
JGGZZZSJ  varchar2(6)   ,  /* 机构工作终止时间  */
JGDZ  varchar2(400)   ,  /* 机构地址  */
FZRXM  varchar2(100)   ,  /* 负责人姓名  */
FZRZW  varchar2(60)   ,  /* 负责人职务  */
FZRLXDH  varchar2(30)   ,  /* 负责人联系电话  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index JGXXB_idx0 on JGXXB(NBJGH ,CJRQ );
create table GYB (
GH  varchar2(30)  not null  ,  /* 工号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
NBJGH  varchar2(30)  not null  ,  /* 内部机构号  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
XM  varchar2(100)   ,  /* 姓名  */
SFZH  varchar2(60)   ,  /* 身份证号  */
LXDH  varchar2(30)   ,  /* 联系电话  */
WDH  varchar2(30)   ,  /* 网点号  */
SSBM  varchar2(60)   ,  /* 所属部门  */
ZW  varchar2(60)   ,  /* 职务  */
YGZT  varchar2(30)   ,  /* 员工状态  */
GWBH  varchar2(60)   ,  /* 岗位编号  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
GYH  varchar2(30)  not null  ,  /* 柜员号  */
GH  varchar2(30)   ,  /* 工号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
NBJGH  varchar2(30)  not null  ,  /* 内部机构号  */
ZXJGDM  varchar2(30)   ,  /* 总行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
GYLX  varchar2(30)   ,  /* 柜员类型  */
SFSTGY  varchar2(4)   ,  /* 是否实体柜员  */
KHJLBZ  varchar2(4)   ,  /* 客户经理标志  */
JBZWBZ  varchar2(4)   ,  /* 经办账务标志  */
QXGLBZ  varchar2(4)   ,  /* 权限管理标志  */
YBGLBZ  varchar2(4)   ,  /* 一般管理标志  */
XDYBZ  varchar2(4)   ,  /* 信贷员标志  */
KGYBZ  varchar2(4)   ,  /* 库管员标志  */
ZHGYBZ  varchar2(4)   ,  /* 综合柜员标志  */
SQBZ  varchar2(4)   ,  /* 授权标志  */
SQFW  varchar2(60)   ,  /* 授权范围  */
GWBH  varchar2(60)   ,  /* 岗位编号  */
GYYHJB  varchar2(30)   ,  /* 柜员用户级别  */
GYQXJB  varchar2(30)   ,  /* 柜员权限级别  */
SGRQ  varchar2(8)   ,  /* 上岗日期  */
GWZT  varchar2(30)   ,  /* 柜员状态  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index GYB_idx0 on GYB(GH ,NBJGH ,CJRQ ,GYH ,NBJGH ,CJRQ );
create table JGGXB (
GWBH  varchar2(60)  not null  ,  /* 岗位编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
NBJGH  varchar2(30)  not null  ,  /* 内部机构号  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
GWZL  varchar2(60)   ,  /* 岗位种类  */
GWMC  varchar2(60)   ,  /* 岗位名称  */
GWSM  varchar2(400)   ,  /* 岗位说明  */
GWZT  varchar2(30)   ,  /* 岗位状态  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
YHJGDM  varchar2(30)   ,  /* 银行机构代码  */
NBJGH  varchar2(30)  not null  ,  /* 内部机构号  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
YHJGMC  varchar2(200)   ,  /* 银行机构名称  */
YZBM  varchar2(6)   ,  /* 邮政编码  */
SJGLJGDM  varchar2(30)   ,  /* 上级管理机构代码  */
SJGLJGMC  varchar2(200)   ,  /* 上级管理机构名称  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index JGGXB_idx0 on JGGXB(GWBH ,NBJGH ,CJRQ ,NBJGH ,CJRQ );
create table NBKMDZB (
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
YHJGDM  varchar2(30)   ,  /* 银行机构代码  */
NBJGH  varchar2(30)  not null  ,  /* 内部机构号  */
YHJGMC  varchar2(200)   ,  /* 银行机构名称  */
KMBH  varchar2(60)  not null  ,  /* 总账会计科目编号  */
KMMC  varchar2(200)   ,  /* 总账会计科目名称  */
KMJC  integer   ,  /* 总账会计科目级次  */
KMLX  integer   ,  /* 会计科目类型  */
QCJFYE  decimal(16,2)   ,  /* 期初借方余额  */
QCDFYE  decimal(16,2)   ,  /* 期初贷方余额  */
JFFSE  decimal(16,2)   ,  /* 本期借方发生额  */
DFFSE  decimal(16,2)   ,  /* 本期贷方发生额  */
QMJFYE  decimal(16,2)   ,  /* 期末借方余额  */
QMDFYE  decimal(16,2)   ,  /* 期末贷方余额  */
BZ  varchar2(3)  not null  ,  /* 币种信息  */
KJRQ  varchar2(8)  not null  ,  /* 会计日期  */
BSZQ  integer  not null  ,  /* 报送周期  */
KMBH  varchar2(60)  not null  ,  /* 总账会计科目编号  */
KMMC  varchar2(200)   ,  /* 总账会计科目名称  */
KJKMJC  integer   ,  /* 会计科目级次  */
SJKMBH  varchar2(60)   ,  /* 上级科目编号  */
SJKMMC  varchar2(200)   ,  /* 上级科目名称  */
GSYWDL  integer   ,  /* 归属业务大类  */
GSYWZL  varchar2(30)   ,  /* 归属业务子类  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index NBKMDZB_idx0 on NBKMDZB(NBJGH ,KMBH ,BZ ,KJRQ ,BSZQ ,KMBH ,CJRQ );
create table GRHQCKFHZMXJL (
HQCKZH  varchar2(60)  not null  ,  /* 活期存款账号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
TJKMBH  varchar2(20)   ,  /* 统计科目编号  */
BZ  varchar2(3)  not null  ,  /* 币种  */
ZHMC  varchar2(200)   ,  /* 账户名称  */
GRHQCKZHLX  varchar2(60)   ,  /* 个人活期存款账户类型  */
JYJZMC  varchar2(6)   ,  /* 交易介质名称  */
JYJZH  varchar2(60)  not null  ,  /* 交易介质号  */
BZJZHBZ  varchar2(4)   ,  /* 保证金账户标志  */
LL  decimal(16,2)   ,  /* 利率  */
CKYE  decimal(16,2)   ,  /* 存款余额  */
KHRQ  varchar2(8)   ,  /* 开户日期  */
KHGYH  varchar2(30)   ,  /* 开户柜员号  */
XHRQ  varchar2(8)   ,  /* 销户日期  */
ZHZT  varchar2(60)   ,  /* 账户状态  */
SCDHRQ  varchar2(8)   ,  /* 上次动户日期  */
CHLB  varchar2(12)  not null  ,  /* 钞汇类别  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
HXJYLSH  varchar2(60)  not null  ,  /* 核心交易流水号  */
ZJYLSH  varchar2(30)  not null  ,  /* 子交易流水号  */
BCXH  integer  not null  ,  /* 笔次序号  */
HQCKZH  varchar2(60)  not null  ,  /* 活期存款账号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
HXJYRQ  varchar2(8)  not null  ,  /* 核心交易日期  */
HXJYSJ  varchar2(6)   ,  /* 核心交易时间  */
BZ  varchar2(3)   ,  /* 币种  */
ZHMC  varchar2(200)   ,  /* 账户名称  */
JYLX  varchar2(60)   ,  /* 交易类型  */
JYJE  decimal(16,2)   ,  /* 交易金额  */
KHHJGH  varchar2(30)   ,  /* 开户行机构号  */
YWBLJGH  varchar2(30)   ,  /* 业务办理机构号  */
ZHYE  decimal(16,2)   ,  /* 账户余额  */
DFZH  varchar2(60)   ,  /* 对方账号  */
DFHM  varchar2(200)   ,  /* 对方户名  */
DFXH  varchar2(30)   ,  /* 对方行号  */
DFXM  varchar2(200)   ,  /* 对方行名  */
JYQD  varchar2(60)   ,  /* 交易渠道  */
XZBZ  varchar2(4)   ,  /* 现转标志  */
DBRXM  varchar2(100)   ,  /* 代办人姓名  */
DBRZJLB  varchar2(60)   ,  /* 代办人证件类别  */
DBRZJHM  varchar2(60)   ,  /* 代办人证件号码  */
JYGYH  varchar2(30)   ,  /* 交易柜员号  */
GYLSH  varchar2(30)   ,  /* 柜员流水号  */
SQGYH  varchar2(30)   ,  /* 授权柜员号  */
ZY  varchar2(400)   ,  /* 摘要  */
CBMBZ  varchar2(10)   ,  /* 冲补抹标志  */
JYJDBZ  varchar2(12)   ,  /* 交易借贷标志  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index GRHQCKFHZMXJL_idx0 on GRHQCKFHZMXJL(HQCKZH ,BZ ,JYJZH ,CHLB ,CJRQ ,HXJYLSH ,ZJYLSH ,BCXH ,HQCKZH ,HXJYRQ ,CJRQ );
create table GRDQCKFHZMXJL (
DQCKZH  varchar2(60)  not null  ,  /* 定期存款账号  */
GRKHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
BZ  varchar2(3)  not null  ,  /* 币种  */
TJKMBH  varchar2(20)   ,  /* 统计科目编号  */
ZHMC  varchar2(200)   ,  /* 账户名称  */
GRDQCKZHLX  varchar2(60)   ,  /* 个人定期存款账户类型  */
CKQX  varchar2(20)   ,  /* 存款期限  */
LL  decimal(16,2)   ,  /* 利率  */
JYJZMC  varchar2(6)   ,  /* 交易介质名称  */
JYJZH  varchar2(60)  not null  ,  /* 交易介质号  */
BZJZHBZ  varchar2(4)   ,  /* 保证金账户标志  */
KHJE  decimal(16,2)   ,  /* 开户金额  */
CKYE  decimal(16,2)   ,  /* 存款余额  */
KHRQ  varchar2(8)   ,  /* 开户日期  */
KHGYH  varchar2(30)   ,  /* 开户柜员号  */
XHRQ  varchar2(8)   ,  /* 销户日期  */
DQR  varchar2(8)   ,  /* 到期日  */
ZHZT  varchar2(60)   ,  /* 账户状态  */
SCDHRQ  varchar2(8)   ,  /* 上次动户日期  */
CHLB  varchar2(12)  not null  ,  /* 钞汇类别  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
HXJYLSH  varchar2(60)  not null  ,  /* 核心交易流水号  */
ZJYLSH  varchar2(30)  not null  ,  /* 子交易流水号  */
BCXH  integer  not null  ,  /* 笔次序号  */
DQCKZH  varchar2(60)  not null  ,  /* 定期存款账号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
HXJYRQ  varchar2(8)  not null  ,  /* 核心交易日期  */
HXJYSJ  varchar2(6)   ,  /* 核心交易时间  */
BZ  varchar2(3)   ,  /* 币种  */
ZHMC  varchar2(200)   ,  /* 账户名称  */
JYLX  varchar2(60)   ,  /* 交易类型  */
JYJE  decimal(16,2)   ,  /* 交易金额  */
KHHJGH  varchar2(30)   ,  /* 开户行机构号  */
YWBLJGH  varchar2(30)   ,  /* 业务办理机构号  */
ZHYE  decimal(16,2)   ,  /* 账户余额  */
DFZH  varchar2(60)   ,  /* 对方账号  */
DFHM  varchar2(200)   ,  /* 对方户名  */
DFXH  varchar2(30)   ,  /* 对方行号  */
DFXM  varchar2(200)   ,  /* 对方行名  */
JYQD  varchar2(60)   ,  /* 交易渠道  */
XZBZ  varchar2(4)   ,  /* 现转标志  */
BFTQZQBZ  varchar2(4)   ,  /* 部分提前支取标志  */
DBRXM  varchar2(100)   ,  /* 代办人姓名  */
DBRZJLB  varchar2(60)   ,  /* 代办人证件类别  */
DBRZJHM  varchar2(60)   ,  /* 代办人证件号码  */
JYGYH  varchar2(30)   ,  /* 交易柜员号  */
SQGYH  varchar2(30)   ,  /* 授权柜员号  */
ZY  varchar2(400)   ,  /* 摘要  */
CBMBZ  varchar2(10)   ,  /* 冲补抹标志  */
JYJDBZ  varchar2(12)   ,  /* 交易借贷标志  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index GRDQCKFHZMXJL_idx0 on GRDQCKFHZMXJL(DQCKZH ,BZ ,JYJZH ,CHLB ,CJRQ ,HXJYLSH ,ZJYLSH ,BCXH ,DQCKZH ,HXJYRQ ,CJRQ );
create table DGHQCKFHZMXJL (
HQCKZH  varchar2(60)  not null  ,  /* 活期存款账号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
TJKMBH  varchar2(20)   ,  /* 统计科目编号  */
BZ  varchar2(3)  not null  ,  /* 币种  */
ZHMC  varchar2(200)   ,  /* 账户名称  */
DGHQCKZHLX  varchar2(60)   ,  /* 对公活期存款账户类型  */
BZJZHBZ  varchar2(4)   ,  /* 保证金账户标志  */
LL  decimal(16,2)   ,  /* 利率  */
CKYE  decimal(16,2)   ,  /* 存款余额  */
KHRQ  varchar2(8)   ,  /* 开户日期  */
KHGYH  varchar2(30)   ,  /* 开户柜员号  */
XHRQ  varchar2(8)   ,  /* 销户日期  */
ZHZT  varchar2(60)   ,  /* 账户状态  */
SCDHRQ  varchar2(8)   ,  /* 上次动户日期  */
CHLB  varchar2(12)  not null  ,  /* 钞汇类别  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
HXJYLSH  varchar2(60)  not null  ,  /* 核心交易流水号  */
ZJYLSH  varchar2(30)  not null  ,  /* 子交易流水号  */
BCXH  integer  not null  ,  /* 笔次序号  */
HQCKZH  varchar2(60)  not null  ,  /* 活期存款账号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
HXJYRQ  varchar2(8)  not null  ,  /* 核心交易日期  */
HXJYSJ  varchar2(6)   ,  /* 核心交易时间  */
ZHMC  varchar2(200)   ,  /* 账户名称  */
JYLX  varchar2(60)   ,  /* 交易类型  */
JYJE  decimal(16,2)   ,  /* 交易金额  */
KHHJGH  varchar2(30)   ,  /* 开户行机构号  */
YWBLJGH  varchar2(30)   ,  /* 业务办理机构号  */
ZHYE  decimal(16,2)   ,  /* 账户余额  */
DFZH  varchar2(60)   ,  /* 对方账号  */
DFHM  varchar2(200)   ,  /* 对方户名  */
DFXH  varchar2(30)   ,  /* 对方行号  */
DFXM  varchar2(200)   ,  /* 对方行名  */
JYQD  varchar2(60)   ,  /* 交易渠道  */
BZ  varchar2(3)   ,  /* 币种  */
XZBZ  varchar2(4)   ,  /* 现转标志  */
DBRXM  varchar2(100)   ,  /* 代办人姓名  */
DBRZJLB  varchar2(60)   ,  /* 代办人证件类别  */
DBRZJHM  varchar2(60)   ,  /* 代办人证件号码  */
JYGYH  varchar2(30)   ,  /* 交易柜员号  */
GYLSH  varchar2(30)   ,  /* 柜员流水号  */
SQGYH  varchar2(30)   ,  /* 授权柜员号  */
ZY  varchar2(400)   ,  /* 摘要  */
CBMBZ  varchar2(10)   ,  /* 冲补抹标志  */
JYJDBZ  varchar2(12)   ,  /* 交易借贷标志  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index DGHQCKFHZMXJL_idx0 on DGHQCKFHZMXJL(HQCKZH ,BZ ,CHLB ,CJRQ ,HXJYLSH ,ZJYLSH ,BCXH ,HQCKZH ,HXJYRQ ,CJRQ );
create table DGDQCKFHZMXJL (
DQCKZH  varchar2(60)  not null  ,  /* 定期存款账号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
BZ  varchar2(3)  not null  ,  /* 币种  */
TJKMBH  varchar2(20)   ,  /* 统计科目编号  */
ZHMC  varchar2(200)   ,  /* 账户名称  */
DGDQCKZHLX  varchar2(60)   ,  /* 对公定期存款账户类型  */
CKQX  varchar2(20)   ,  /* 存款期限  */
LL  decimal(16,2)   ,  /* 利率  */
BZJZHBZ  varchar2(4)   ,  /* 保证金账户标志  */
KHJE  decimal(16,2)   ,  /* 开户金额  */
CKYE  decimal(16,2)   ,  /* 存款余额  */
KHRQ  varchar2(8)   ,  /* 开户日期  */
KHGYH  varchar2(30)   ,  /* 开户柜员号  */
XHRQ  varchar2(8)   ,  /* 销户日期  */
DQR  varchar2(8)   ,  /* 到期日  */
ZHZT  varchar2(60)   ,  /* 账户状态  */
SCDHRQ  varchar2(8)   ,  /* 上次动户日期  */
CHLB  varchar2(12)  not null  ,  /* 钞汇类别  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
HXJYLSH  varchar2(60)  not null  ,  /* 核心交易流水号  */
ZJYLSH  varchar2(30)  not null  ,  /* 子交易流水号  */
BCXH  integer  not null  ,  /* 笔次序号  */
DQCKZH  varchar2(60)  not null  ,  /* 定期存款账号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
HXJYRQ  varchar2(8)  not null  ,  /* 核心交易日期  */
HXJYSJ  varchar2(6)   ,  /* 核心交易时间  */
BZ  varchar2(3)   ,  /* 币种  */
ZHMC  varchar2(200)   ,  /* 账户名称  */
JYLX  varchar2(60)   ,  /* 交易类型  */
JYJE  decimal(16,2)   ,  /* 交易金额  */
KHHJGH  varchar2(30)   ,  /* 开户行机构号  */
YWBLJGH  varchar2(30)   ,  /* 业务办理机构号  */
ZHYE  decimal(16,2)   ,  /* 账户余额  */
DFZH  varchar2(60)   ,  /* 对方账号  */
DFHM  varchar2(200)   ,  /* 对方户名  */
DFXH  varchar2(30)   ,  /* 对方行号  */
DFXM  varchar2(200)   ,  /* 对方行名  */
JYQD  varchar2(60)   ,  /* 交易渠道  */
XZBZ  varchar2(4)   ,  /* 现转标志  */
BFTQZQBZ  varchar2(4)   ,  /* 部分提前支取标志  */
DBRXM  varchar2(100)   ,  /* 代办人姓名  */
DBRZJLB  varchar2(60)   ,  /* 代办人证件类别  */
DBRZJHM  varchar2(60)   ,  /* 代办人证件号码  */
JYGYH  varchar2(30)   ,  /* 交易柜员号  */
SQGYH  varchar2(30)   ,  /* 授权柜员号  */
ZY  varchar2(400)   ,  /* 摘要  */
CBMBZ  varchar2(10)   ,  /* 冲补抹标志  */
JYJDBZ  varchar2(12)   ,  /* 交易借贷标志  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index DGDQCKFHZMXJL_idx0 on DGDQCKFHZMXJL(DQCKZH ,BZ ,CHLB ,CJRQ ,HXJYLSH ,ZJYLSH ,BCXH ,DQCKZH ,HXJYRQ ,CJRQ );
create table NBFHZMXJL (
NBFHZZH  varchar2(60)  not null  ,  /* 内部分户账账号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
ZHMC  varchar2(200)   ,  /* 账户名称  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
JDBZ  varchar2(12)   ,  /* 借贷标志  */
BZ  varchar2(3)  not null  ,  /* 币种  */
TJKMBH  varchar2(20)   ,  /* 统计科目编号  */
NBFHZZHLX  varchar2(60)   ,  /* 内部分户账账户类型  */
JFYE  decimal(16,2)   ,  /* 借方余额  */
DFYE  decimal(16,2)   ,  /* 贷方余额  */
JXBZ  varchar2(4)   ,  /* 计息标志  */
JXFS  varchar2(30)   ,  /* 计息方式  */
LL  decimal(16,2)   ,  /* 利率  */
KHRQ  varchar2(8)   ,  /* 开户日期  */
XHRQ  varchar2(8)   ,  /* 销户日期  */
ZHZT  varchar2(60)   ,  /* 账户状态  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
HXJYLSH  varchar2(60)  not null  ,  /* 核心交易流水号  */
ZJYLSH  varchar2(30)  not null  ,  /* 子交易流水号  */
BCXH  integer  not null  ,  /* 笔次序号  */
NBFHZZH  varchar2(60)  not null  ,  /* 内部分户账账号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
HXJYRQ  varchar2(8)  not null  ,  /* 核心交易日期  */
HXJYSJ  varchar2(6)   ,  /* 核心交易时间  */
BZ  varchar2(3)   ,  /* 币种  */
ZHMC  varchar2(200)   ,  /* 账户名称  */
JYLX  varchar2(60)   ,  /* 交易类型  */
JYJE  decimal(16,2)   ,  /* 交易金额  */
ZHYE  decimal(16,2)   ,  /* 账户余额  */
DFZH  varchar2(60)   ,  /* 对方账号  */
DFKMBH  varchar2(60)   ,  /* 对方科目编号  */
DFKMMC  varchar2(300)   ,  /* 对方科目名称  */
DFHM  varchar2(200)   ,  /* 对方户名  */
DFXH  varchar2(30)   ,  /* 对方行号  */
JYQD  varchar2(60)   ,  /* 交易渠道  */
XZBZ  varchar2(4)   ,  /* 现转标志  */
JYGYH  varchar2(30)   ,  /* 交易柜员号  */
SQGYH  varchar2(30)   ,  /* 授权柜员号  */
JZRQ  varchar2(8)   ,  /* 进账日期  */
XZRQ  varchar2(8)   ,  /* 销账日期  */
ZY  varchar2(400)   ,  /* 摘要  */
CBMBZ  varchar2(10)   ,  /* 冲补抹标志  */
JYJDBZ  varchar2(12)   ,  /* 交易借贷标志  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index NBFHZMXJL_idx0 on NBFHZMXJL(NBFHZZH ,BZ ,CJRQ ,HXJYLSH ,ZJYLSH ,BCXH ,NBFHZZH ,HXJYRQ ,CJRQ );
create table GRXDFHZMXJL (
DKFHZH  varchar2(60)  not null  ,  /* 贷款分户账号  */
XDJJH  varchar2(100)  not null  ,  /* 信贷借据号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
ZHMC  varchar2(200)   ,  /* 账户名称  */
BZ  varchar2(3)  not null  ,  /* 币种  */
ZJHKRQ  varchar2(8)   ,  /* 上次还款日期  */
TJKMBH  varchar2(20)   ,  /* 统计科目编号  */
DKHTH  varchar2(100)   ,  /* 贷款合同号  */
XDYXM  varchar2(100)   ,  /* 信贷员姓名  */
DKWJFL  varchar2(6)   ,  /* 贷款五级分类  */
HKZH  varchar2(60)   ,  /* 还款账号  */
DKRZZH  varchar2(60)   ,  /* 贷款入账账号  */
DKLL  decimal(16,2)   ,  /* 贷款利率  */
DKBJZE  decimal(16,2)   ,  /* 贷款本金总额  */
DKZCYE  decimal(16,2)   ,  /* 贷款正常余额  */
DKYQYE  decimal(16,2)   ,  /* 贷款逾期余额  */
QBYE  decimal(16,2)   ,  /* 欠本余额  */
BWQXYE  decimal(16,2)   ,  /* 表外欠息余额  */
DKQX  integer   ,  /* 贷款期限  */
DQRQ  varchar2(8)   ,  /* 到期日期  */
QXRQ  varchar2(8)   ,  /* 起息日期  */
KHRQ  varchar2(8)   ,  /* 开户日期  */
XHRQ  varchar2(8)   ,  /* 销户日期  */
YQRQ  varchar2(8)   ,  /* 逾期日期  */
ZHZT  varchar2(60)   ,  /* 账户状态  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
HXJYLSH  varchar2(60)  not null  ,  /* 核心交易流水号  */
ZJYLSH  varchar2(30)  not null  ,  /* 子交易流水号  */
BCXH  integer  not null  ,  /* 笔次序号  */
DKFHZH  varchar2(60)  not null  ,  /* 贷款分户账号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
XDJJH  varchar2(100)  not null  ,  /* 信贷借据号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
HXJYRQ  varchar2(8)  not null  ,  /* 核心交易日期  */
HXJYSJ  varchar2(6)   ,  /* 核心交易时间  */
ZHMC  varchar2(200)   ,  /* 账户名称  */
JYLX  varchar2(60)   ,  /* 交易类型  */
JYJDBZ  varchar2(12)   ,  /* 交易借贷标志  */
JYJE  decimal(16,2)   ,  /* 交易金额  */
ZHYE  decimal(16,2)   ,  /* 账户余额  */
DFZH  varchar2(60)   ,  /* 对方账号  */
DFHM  varchar2(200)   ,  /* 对方户名  */
DFXH  varchar2(30)   ,  /* 对方行号  */
DFXM  varchar2(200)   ,  /* 对方行名  */
JYQD  varchar2(60)   ,  /* 交易渠道  */
BZ  varchar2(3)   ,  /* 币种  */
ZY  varchar2(400)   ,  /* 摘要  */
CBMBZ  varchar2(10)   ,  /* 冲补抹标志  */
DBRXM  varchar2(100)   ,  /* 代办人姓名  */
DBRZJLB  varchar2(60)   ,  /* 代办人证件类别  */
DBRZJHM  varchar2(60)   ,  /* 代办人证件号码  */
JYGYH  varchar2(30)   ,  /* 交易柜员号  */
SQGYH  varchar2(30)   ,  /* 授权柜员号  */
XZBZ  varchar2(4)   ,  /* 现转标志  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index GRXDFHZMXJL_idx0 on GRXDFHZMXJL(DKFHZH ,XDJJH ,BZ ,CJRQ ,HXJYLSH ,ZJYLSH ,BCXH ,DKFHZH ,XDJJH ,HXJYRQ ,CJRQ );
create table DGXDFHZMXJL (
DKFHZH  varchar2(60)  not null  ,  /* 贷款分户账号  */
XDJJH  varchar2(100)  not null  ,  /* 信贷借据号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
ZHMC  varchar2(200)   ,  /* 账户名称  */
BZ  varchar2(3)  not null  ,  /* 币种  */
ZJHKRQ  varchar2(8)   ,  /* 上次还款日期  */
TJKMBH  varchar2(20)   ,  /* 统计科目编号  */
DKHTH  varchar2(100)   ,  /* 贷款合同号  */
XDYXM  varchar2(100)   ,  /* 信贷员姓名  */
DKWJFL  varchar2(6)   ,  /* 贷款五级分类  */
HKZH  varchar2(60)   ,  /* 还款账号  */
DKRZZH  varchar2(60)   ,  /* 贷款入账账号  */
DKLL  decimal(16,2)   ,  /* 贷款利率  */
DKBJZE  decimal(16,2)   ,  /* 贷款本金总额  */
DKZCYE  decimal(16,2)   ,  /* 贷款正常余额  */
DKYQYE  decimal(16,2)   ,  /* 贷款逾期余额  */
QBYE  decimal(16,2)   ,  /* 欠本余额  */
BWQXYE  decimal(16,2)   ,  /* 表外欠息余额  */
DKQX  integer   ,  /* 贷款期限  */
DQRQ  varchar2(8)   ,  /* 到期日期  */
QXRQ  varchar2(8)   ,  /* 起息日期  */
KHRQ  varchar2(8)   ,  /* 开户日期  */
XHRQ  varchar2(8)   ,  /* 销户日期  */
YQRQ  varchar2(8)   ,  /* 逾期日期  */
ZHZT  varchar2(60)   ,  /* 账户状态  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
HXJYLSH  varchar2(60)  not null  ,  /* 核心交易流水号  */
ZJYLSH  varchar2(30)  not null  ,  /* 子交易流水号  */
BCXH  integer  not null  ,  /* 笔次序号  */
DKZH  varchar2(60)  not null  ,  /* 贷款账号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
XDJJH  varchar2(100)   ,  /* 信贷借据号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
HXJYRQ  varchar2(8)  not null  ,  /* 核心交易日期  */
HXJYSJ  varchar2(6)   ,  /* 核心交易时间  */
ZHMC  varchar2(200)   ,  /* 账户名称  */
JYLX  varchar2(60)   ,  /* 交易类型  */
JYJDBZ  varchar2(12)   ,  /* 交易借贷标志  */
JYJE  decimal(16,2)   ,  /* 交易金额  */
ZHYE  decimal(16,2)   ,  /* 账户余额  */
DFZH  varchar2(60)   ,  /* 对方账号  */
DFHM  varchar2(200)   ,  /* 对方户名  */
DFXH  varchar2(30)   ,  /* 对方行号  */
DFXM  varchar2(200)   ,  /* 对方行名  */
JYQD  varchar2(60)   ,  /* 交易渠道  */
BZ  varchar2(3)   ,  /* 币种  */
ZY  varchar2(400)   ,  /* 摘要  */
CBMBZ  varchar2(10)   ,  /* 冲补抹标志  */
DBRXM  varchar2(100)   ,  /* 代办人姓名  */
DBRZJLB  varchar2(60)   ,  /* 代办人证件类别  */
DBRZJHM  varchar2(60)   ,  /* 代办人证件号码  */
JYGYH  varchar2(30)   ,  /* 交易柜员号  */
SQGYH  varchar2(30)   ,  /* 授权柜员号  */
XZBZ  varchar2(4)   ,  /* 现转标志  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index DGXDFHZMXJL_idx0 on DGXDFHZMXJL(DKFHZH ,XDJJH ,BZ ,CJRQ ,HXJYLSH ,ZJYLSH ,BCXH ,DKZH ,HXJYRQ ,CJRQ );
create table GRKHGXXX (
KHTYBH  varchar2(60)  not null  ,  /* 客户统一编号  */
ZJHM  varchar2(60)   ,  /* 证件号码  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
LYXT  varchar2(100)   ,  /* 来源系统  */
KHXM  varchar2(100)   ,  /* 客户姓名  */
KHYWXM  varchar2(200)   ,  /* 客户英文姓名  */
ZJLB  varchar2(60)   ,  /* 证件类别  */
GJ  varchar2(60)   ,  /* 国籍  */
MZ  varchar2(30)   ,  /* 民族  */
XB  varchar2(10)   ,  /* 性别  */
XL  varchar2(30)   ,  /* 学历  */
CSRQ  varchar2(8)   ,  /* 出生日期  */
GZDWMC  varchar2(200)   ,  /* 工作单位名称  */
GZDWDZ  varchar2(400)   ,  /* 工作单位地址  */
GZDWDH  varchar2(30)   ,  /* 工作单位电话  */
ZY  varchar2(80)   ,  /* 职业  */
JTZZ  varchar2(400)   ,  /* 家庭住址  */
TXDZ  varchar2(400)   ,  /* 通讯地址  */
JTDH  varchar2(30)   ,  /* 家庭电话  */
YDDH  varchar2(30)   ,  /* 移动电话  */
GRYSR  decimal(16,2)   ,  /* 个人月收入  */
JTYSR  decimal(16,2)   ,  /* 家庭月收入  */
HYQK  varchar2(30)   ,  /* 婚姻情况  */
POXM  varchar2(100)   ,  /* 配偶姓名  */
POLXDH  varchar2(30)   ,  /* 配偶联系电话  */
POYDDH  varchar2(30)   ,  /* 配偶移动电话  */
PODYKHH  varchar2(60)   ,  /* 配偶对应客户号  */
BXYGBZ  varchar2(4)   ,  /* 本行员工标志  */
SBXHMDBZ  varchar2(4)   ,  /* 上本行黑名单标志  */
SHMDRQ  varchar2(8)   ,  /* 上黑名单日期  */
SHMDYY  varchar2(400)   ,  /* 上黑名单原因  */
YZBM  varchar2(6)   ,  /* 邮政编码  */
DWXZ  varchar2(60)   ,  /* 单位性质  */
ZC  varchar2(60)   ,  /* 职称  */
SFNH  varchar2(4)   ,  /* 是否农户  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
KHTYBH  varchar2(60)  not null  ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
DYGRKHTYBH  varchar2(60)  not null  ,  /* 对应个人客户统一编号  */
SHGX  varchar2(60)   ,  /* 社会关系  */
DYGRKHXM  varchar2(100)   ,  /* 对应个人客户姓名  */
DYGRKHGZDWMC  varchar2(200)   ,  /* 对应个人客户工作单位名称  */
DYGRKHGZDWDZ  varchar2(400)   ,  /* 对应个人客户工作单位地址  */
DYGRKHGZDWDH  varchar2(30)   ,  /* 对应个人客户工作单位电话  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index GRKHGXXX_idx0 on GRKHGXXX(KHTYBH ,CJRQ ,KHTYBH ,DYGRKHTYBH ,CJRQ );
create table GDXX (
KHTYBH  varchar2(60)  not null  ,  /* 客户统一编号  */
ZZJGDM  varchar2(40)   ,  /* 统一社会信用代码  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
KHMC  varchar2(200)   ,  /* 客户名称  */
KHYWMC  varchar2(200)   ,  /* 客户英文名称  */
FRDB  varchar2(30)   ,  /* 法人代表  */
FRDBZJLB  varchar2(60)   ,  /* 法人代表证件类别  */
FRDBZJHM  varchar2(60)   ,  /* 法人代表证件号码  */
CWRY  varchar2(100)   ,  /* 财务人员  */
CWRYZJLB  varchar2(60)   ,  /* 财务人员证件类别  */
CWRYZJHM  varchar2(60)   ,  /* 财务人员证件号码  */
JBCKZH  varchar2(60)   ,  /* 基本存款账号  */
JBZHKHXMC  varchar2(200)   ,  /* 基本账户开户行名称  */
ZCZB  decimal(16,2)   ,  /* 注册资本  */
ZCDZ  varchar2(400)   ,  /* 注册地址  */
LXDH  varchar2(30)   ,  /* 联系电话  */
YYZZH  varchar2(60)   ,  /* 营业执照号  */
YYZZYXJZRQ  varchar2(8)   ,  /* 营业执照有效截止日期  */
JYFW  varchar2(1000)   ,  /* 经营范围  */
CLRQ  varchar2(8)   ,  /* 成立日期  */
SSXY  varchar2(100)   ,  /* 所属行业  */
KHLB  varchar2(30)   ,  /* 客户类别  */
DKZH  varchar2(60 )   ,  /* 贷款证号  */
GSZH  varchar2(60 )   ,  /* 国税证号  */
DSZH  varchar2(60 )   ,  /* 地税证号  */
MGSKHTYBH  varchar2(60)   ,  /* 母公司客户统一编号  */
TYSXBZ  varchar2(4)   ,  /* 统一授信标志  */
SXED  decimal(16,2)   ,  /* 授信额度  */
YYED  decimal(16,2)   ,  /* 已用额度  */
SSGSBZ  varchar2(4)   ,  /* 上市公司标志  */
XYDJBH  varchar2(200)   ,  /* 信用评级结果  */
ZCZBBZ  varchar2(3)   ,  /* 注册资本币种  */
SSZBBZ  varchar2(3)   ,  /* 实收资本币种  */
SSZB  decimal(16,2)   ,  /* 实收资本  */
ZZC  decimal(16,2)   ,  /* 总资产  */
JZC  decimal(16,2)   ,  /* 净资产  */
NSR  decimal(16,2)   ,  /* 年收入  */
SCJLXDGXNY  varchar2(6)   ,  /* 首次建立信贷关系年月  */
YZBM  varchar2(6)   ,  /* 邮政编码  */
CZHM  varchar2(30)   ,  /* 传真号码  */
YGRS  integer   ,  /* 员工人数  */
XZQHDM  varchar2(20)   ,  /* 行政区划代码  */
KHLX  varchar2(12)   ,  /* 客户类型  */
FXYJXH  varchar2(200)   ,  /* 风险预警信号  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
KHTYBH  varchar2(60)  not null  ,  /* 客户统一编号  */
ZZJGDM  varchar2(40)   ,  /* 统一社会信用代码  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
GDMC  varchar2(200)   ,  /* 股东名称  */
GDZJLB  varchar2(60)   ,  /* 股东证件类别  */
GDZJHM  varchar2(60)  not null  ,  /* 股东证件号码  */
GDZT  varchar2(6)   ,  /* 股东状态  */
CGBL  decimal(16,2)   ,  /* 持股比例  */
RGSJ  varchar2(8)   ,  /* 入股时间  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index GDXX_idx0 on GDXX(KHTYBH ,CJRQ ,KHTYBH ,GDZJHM ,CJRQ );
create table XDHTB (
KHTYBH  varchar2(60)  not null  ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
GLRKHTYBH  varchar2(60)  not null  ,  /* 关联人客户统一编号  */
KHSBM  varchar2(60)   ,  /* 客户识别码  */
KHLB  varchar2(30)   ,  /* 客户类别  */
GLRSBM  varchar2(60)   ,  /* 关联人识别码  */
GLRMC  varchar2(200)   ,  /* 关联人名称  */
GLRLB  varchar2(30)   ,  /* 关联人类别  */
GXLX  varchar2(300)   ,  /* 关系类型  */
GLGXZT  varchar2(6)   ,  /* 关联关系状态  */
LRSJ  varchar2(8)   ,  /* 录入时间  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
XDHTH  varchar2(100)  not null  ,  /* 信贷合同号  */
ZHTH  varchar2(100)   ,  /* 主合同号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
KHMC  varchar2(200)   ,  /* 客户名称  */
CPMC  varchar2(200)   ,  /* 产品名称  */
DKXGZL  varchar2(30)   ,  /* 贷款新规种类  */
XDYWZL  varchar2(100)   ,  /* 贷款类型  */
BZ  varchar2(3)   ,  /* 币种  */
JE  decimal(16,2)   ,  /* 金额  */
HTYDRQ  varchar2(8)   ,  /* 合同约定日期  */
HTDQRQ  varchar2(8)   ,  /* 合同到期日期  */
LLLX  varchar2(6)   ,  /* 利率类型  */
JZLL  decimal(16,2)   ,  /* 基准利率  */
LLFD  integer   ,  /* 利率浮动  */
ZYDBFS  varchar2(60 )   ,  /* 主要担保方式  */
GHJLGH  varchar2(30)   ,  /* 客户经理工号  */
DKQX  integer   ,  /* 贷款期限  */
FKFS  varchar2(12)   ,  /* 放款方式  */
ZJLY  varchar2(100)   ,  /* 资金来源  */
DKYT  varchar2(400)   ,  /* 贷款用途  */
DKTXDQ  varchar2(200)   ,  /* 贷款投向地区  */
DKTXXY  varchar2(100)   ,  /* 贷款投向行业  */
SFGJXZXY  varchar2(4)   ,  /* 是否国家限制行业  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index XDHTB_idx0 on XDHTB(KHTYBH ,GLRKHTYBH ,CJRQ ,XDHTH ,CJRQ );
create table PJPMXXB (
XDHTH  varchar2(100)  not null  ,  /* 信贷合同号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
JKRMC  varchar2(200)   ,  /* 借款人名称  */
XMMC  varchar2(100 )   ,  /* 项目名称  */
XMLX  varchar2(100)   ,  /* 项目类型  */
SFYT  varchar2(4)   ,  /* 是否银团  */
XMZTZ  decimal(16,2)   ,  /* 项目总投资  */
ZBJ  decimal(16,2)   ,  /* 资本金  */
XMDKJE  decimal(16,2)   ,  /* 项目贷款金额  */
XMDKQX  varchar2(30)   ,  /* 项目贷款期限  */
PWWH  varchar2(60 )   ,  /* 批文文号  */
LXPW  varchar2(60 )   ,  /* 立项批文  */
GHXKZBH  varchar2(60 )   ,  /* 规划许可证编号  */
JSYDXKZBH  varchar2(60 )   ,  /* 建设用地许可证编号  */
HPXKZBH  varchar2(60 )   ,  /* 环评许可证编号  */
SGXKZBH  varchar2(60 )   ,  /* 施工许可证编号  */
QTXKZ  varchar2(60 )   ,  /* 其他许可证  */
QTXKZBH  varchar2(60 )   ,  /* 其他许可证编号  */
KGRQ  varchar2(8)   ,  /* 开工日期  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
PJHM  varchar2(60)  not null  ,  /* 票据号码  */
CPRBH  varchar2(60 )   ,  /* 出票人编号  */
FKXDM  varchar2(30)   ,  /* 付款行代码  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
PJLX  varchar2(30)   ,  /* 票据类型  */
CPRQC  varchar2(200)   ,  /* 出票人全称  */
CPRZH  varchar2(60)   ,  /* 出票人账号  */
FKXMC  varchar2(200)   ,  /* 付款行名称  */
BZ  varchar2(3)   ,  /* 币种  */
PMJE  decimal(16,2)   ,  /* 票面金额  */
QFRQ  varchar2(8)   ,  /* 签发日期  */
PJDQRQ  varchar2(8)   ,  /* 票据到期日期  */
SKRMC  varchar2(200)   ,  /* 收款人名称  */
SKRZH  varchar2(60)   ,  /* 收款人账号  */
SKRKHX  varchar2(30)   ,  /* 收款人开户行  */
SYFPHM  varchar2(200)   ,  /* 商业发票号码  */
SYFPBZ  varchar2(3)   ,  /* 商业发票币种  */
SYFPJE  decimal(16,2)   ,  /* 商业发票金额  */
SYFPZL  varchar2(60)   ,  /* 商业发票种类  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index PJPMXXB_idx0 on PJPMXXB(XDHTH ,CJRQ ,PJHM ,CJRQ );
create table MYRZYWXXB (
XDJJH  varchar2(100)  not null  ,  /* 信贷借据号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
KHMC  varchar2(200)   ,  /* 客户名称  */
XDHTH  varchar2(100)   ,  /* 信贷合同号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
BWYWPZ  varchar2(60)   ,  /* 表外业务品种  */
BZ  varchar2(3)   ,  /* 币种  */
JE  decimal(16,2)   ,  /* 金额  */
YE  decimal(16,2)   ,  /* 余额  */
DKQX  integer   ,  /* 授信业务期限  */
SFDF  varchar2(4)   ,  /* 是否垫付  */
DKSJFFRQ  varchar2(8)   ,  /* 授信业务实际发放日期  */
DKYSDQRQ  varchar2(8)   ,  /* 授信业务原始到期日期  */
DKSJDQRQ  varchar2(8)   ,  /* 授信业务实际到期日期  */
ZJRQ  varchar2(8)   ,  /* 终结日期  */
DKWJFL  varchar2(6)   ,  /* 贷款五级分类  */
SXFJE  decimal(16,2)   ,  /* 手续费金额  */
BZJBL  decimal(16,2)   ,  /* 保证金比例  */
BZJBZ  varchar2(3)   ,  /* 保证金币种  */
BZJJE  decimal(16,2)   ,  /* 保证金金额  */
BZJZH  varchar2(60)   ,  /* 保证金账号  */
PJHM  varchar2(60)   ,  /* 票据号码  */
PMJE  decimal(16,2)   ,  /* 票面金额  */
SYFPHM  varchar2(200)   ,  /* 商业发票号码  */
SYFPBZ  varchar2(3)   ,  /* 商业发票币种  */
SYFPJE  decimal(16,2)   ,  /* 商业发票金额  */
SYFPZL  varchar2(60)   ,  /* 商业发票种类  */
XDYGH  varchar2(30)   ,  /* 信贷员工号  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
DGXDJJH  varchar2(100)  not null  ,  /* 借据号  */
XDHTH  varchar2(100)   ,  /* 合同号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
JKRMC  varchar2(200)   ,  /* 借款人名称  */
ZZJGDM  varchar2(40)   ,  /* 统一社会信用代码  */
MYRZPZ  varchar2(60 )   ,  /* 贸易融资品种  */
MYHTH  varchar2(100)   ,  /* 贸易合同号  */
BZ  varchar2(3)   ,  /* 币种  */
MYHTZJE  decimal(16,2)   ,  /* 贸易合同总金额  */
BNYE  decimal(16,2)   ,  /* 表内余额  */
BWYE  decimal(16,2)   ,  /* 表外余额  */
YXGJYWBH  varchar2(30)   ,  /* 银行国际业务编号  */
SYFPHM  varchar2(200)   ,  /* 商业发票号码  */
SYFPBZ  varchar2(3)   ,  /* 商业发票币种  */
SYFPJE  decimal(16,2)   ,  /* 商业发票金额  */
SYFPZL  varchar2(60)   ,  /* 商业发票种类  */
XYZCDX  varchar2(200)   ,  /* 信用证承兑行（或保兑行）名称  */
FFTZL  varchar2(30)   ,  /* 福费廷种类  */
XYZBH  varchar2(30)   ,  /* 信用证编号  */
XYZBZ  varchar2(3)   ,  /* 信用证币种  */
XYZJE  decimal(16,2)   ,  /* 信用证金额  */
XYZKZRQ  varchar2(8)   ,  /* 信用证开证日期  */
XYZQXLX  varchar2(30)   ,  /* 信用证期限类型  */
XYZXQ  varchar2(8)   ,  /* 信用证效期  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index MYRZYWXXB_idx0 on MYRZYWXXB(XDJJH ,CJRQ ,DGXDJJH ,CJRQ );
create table WTDK (
XDHTH  varchar2(100)  not null  ,  /* 信贷合同号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
XYLX  varchar2(60)   ,  /* 协议类型  */
ZBXXH  varchar2(30)   ,  /* 主办行行号  */
CDXXH  varchar2(400)   ,  /* 参贷行行号  */
DLXXH  varchar2(30)   ,  /* 代理行行号  */
ZBXXM  varchar2(200)   ,  /* 主办行行名  */
CDXXM  varchar2(200)   ,  /* 参贷行行名  */
DLXXM  varchar2(1000)   ,  /* 代理行行名  */
DLCDBZ  varchar2(60)   ,  /* 代理参贷标志  */
JKRMC  varchar2(200)   ,  /* 借款人名称  */
SQDKZE  decimal(16,2)   ,  /* 申请贷款总额  */
CDDKJE  decimal(16,2)   ,  /* 承担贷款金额  */
SJCDDKJE  decimal(16,2)   ,  /* 实际承担贷款金额  */
YFFDKJE  decimal(16,2)   ,  /* 已发放贷款金额  */
YFFCDDKJE  decimal(16,2)   ,  /* 已发放承担贷款金额  */
CDSYDKJE  decimal(16,2)   ,  /* 承担剩余贷款金额  */
JLXYXJGDM  varchar2(30)   ,  /* 管理行银行机构代码  */
XYQSRQ  varchar2(8)   ,  /* 协议起始日期  */
XYZZRQ  varchar2(8)   ,  /* 协议终止日期  */
XYZT  varchar2(60)   ,  /* 协议状态  */
FHGY  varchar2(100)   ,  /* 复核柜员  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
XDJJH  varchar2(100)  not null  ,  /* 信贷借据号  */
XDHTH  varchar2(100)   ,  /* 信贷合同号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
WTRKHTYBH  varchar2(60)   ,  /* 委托人客户统一编号  */
WTRKHMC  varchar2(200)   ,  /* 委托人客户名称  */
SYRMC  varchar2(200)   ,  /* 受益人名称  */
WTJJKHXH  varchar2(30)   ,  /* 委托资金开户行号  */
WTJJKHXMC  varchar2(200)   ,  /* 委托资金开户行名称  */
WTJJZH  varchar2(60)   ,  /* 委托账号  */
WTZHLX  varchar2(30)   ,  /* 委托账号类型  */
WTJE  decimal(16,2)   ,  /* 委托金额  */
SJWTDKJE  decimal(16,2)   ,  /* 实际委托贷款金额  */
WTDKYT  varchar2(400)   ,  /* 委托贷款用途  */
SFSX  varchar2(4)   ,  /* 是否收息  */
SXFFS  varchar2(60)   ,  /* 手续费方式  */
SXFJE  decimal(16,2)   ,  /* 手续费金额  */
XYQSRQ  varchar2(8)   ,  /* 协议起始日期  */
XYDQRQ  varchar2(8)   ,  /* 协议到期日期  */
JBRXM  varchar2(100)   ,  /* 经办人姓名  */
KHJLGH  varchar2(30)   ,  /* 经办人工号  */
JBJGMC  varchar2(200)   ,  /* 经办机构名称  */
XYZT  varchar2(60)   ,  /* 协议状态  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index WTDK_idx0 on WTDK(XDHTH ,CJRQ ,XDJJH ,CJRQ );
create table DGXDYWJJ (
XDJJH  varchar2(100)  not null  ,  /* 信贷借据号  */
DKFHZH  varchar2(60)   ,  /* 贷款分户账号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
KHMC  varchar2(200)   ,  /* 客户名称  */
XDHTH  varchar2(100)   ,  /* 信贷合同号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
XDYWZL  varchar2(100)   ,  /* 信贷业务种类  */
BZ  varchar2(3)   ,  /* 币种  */
JKJE  decimal(16,2)   ,  /* 借款金额  */
JKYE  decimal(16,2)   ,  /* 借款余额  */
DKQX  integer   ,  /* 贷款期限  */
ZQCS  integer   ,  /* 展期次数  */
ZQS  integer   ,  /* 总期数  */
DQQS  integer   ,  /* 当前期数  */
FKFS  varchar2(12)   ,  /* 放款方式  */
DKSJFFRQ  varchar2(8)   ,  /* 贷款实际发放日期  */
DKYSDQRQ  varchar2(8)   ,  /* 贷款原始到期日期  */
DKSJDQRQ  varchar2(8)   ,  /* 贷款实际到期日期  */
BNQXYE  decimal(16,2)   ,  /* 表内欠息余额  */
BWQXYE  decimal(16,2)   ,  /* 表外欠息余额  */
DKZT  varchar2(100)   ,  /* 贷款状态  */
ZJRQ  varchar2(8)   ,  /* 终结日期  */
DKLX  varchar2(100)   ,  /* 贷款类型  */
DKRZZH  varchar2(60)   ,  /* 贷款入账账号  */
DKWJFL  varchar2(6)   ,  /* 贷款五级分类  */
LLLX  varchar2(6)   ,  /* 利率类型  */
JZLL  decimal(16,2)   ,  /* 基准利率  */
LLFD  integer   ,  /* 利率浮动  */
HKFS  varchar2(40)   ,  /* 还款方式  */
HKZH  varchar2(60)   ,  /* 还款账号  */
HKQD  varchar2(100)   ,  /* 还款渠道  */
JXFS  varchar2(30)   ,  /* 计息方式  */
BZJBL  decimal(16,2)   ,  /* 保证金比例  */
BZJBZ  varchar2(3)   ,  /* 保证金币种  */
BZJJE  decimal(16,2)   ,  /* 保证金金额  */
BZJZH  varchar2(60)   ,  /* 保证金账号  */
XDYXM  varchar2(100)   ,  /* 信贷员姓名  */
XDYYGH  varchar2(30)   ,  /* 信贷员员工号  */
XZBZ  varchar2(4)   ,  /* 现转标志  */
LJQKQS  integer   ,  /* 累计欠款期数  */
LXQKQS  integer   ,  /* 连续欠款期数  */
STZFBZ  varchar2(4)   ,  /* 受托支付标志  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
XDJJH  varchar2(100)  not null  ,  /* 信贷借据号  */
DKFHZH  varchar2(60)   ,  /* 贷款分户账号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
KHMC  varchar2(200)   ,  /* 客户名称  */
XDHTH  varchar2(100)   ,  /* 信贷合同号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
XDYWZL  varchar2(100)   ,  /* 信贷业务种类  */
BZ  varchar2(3)   ,  /* 币种  */
JKJE  decimal(16,2)   ,  /* 借款金额  */
JKYE  decimal(16,2)   ,  /* 借款余额  */
DKQX  integer   ,  /* 贷款期限  */
ZQCS  integer   ,  /* 展期次数  */
ZQS  integer   ,  /* 总期数  */
DQQS  integer   ,  /* 当前期数  */
FKFS  varchar2(12)   ,  /* 放款方式  */
DKSJFFRQ  varchar2(8)   ,  /* 贷款实际发放日期  */
DKYSDQRQ  varchar2(8)   ,  /* 贷款原始到期日期  */
DKSJDQRQ  varchar2(8)   ,  /* 贷款实际到期日期  */
BNQXYE  decimal(16,2)   ,  /* 表内欠息余额  */
BWQXYE  decimal(16,2)   ,  /* 表外欠息余额  */
DKZT  varchar2(100)   ,  /* 贷款状态  */
ZJRQ  varchar2(8)   ,  /* 终结日期  */
DKLX  varchar2(100)   ,  /* 贷款类型  */
DKRZZH  varchar2(60)   ,  /* 贷款入账账号  */
DKWJFL  varchar2(6)   ,  /* 贷款五级分类  */
LLLX  varchar2(6)   ,  /* 利率类型  */
JZLL  decimal(16,2)   ,  /* 基准利率  */
LLFD  integer   ,  /* 利率浮动  */
HKFS  varchar2(40)   ,  /* 还款方式  */
HKZH  varchar2(60)   ,  /* 还款账号  */
HKQD  varchar2(100)   ,  /* 还款渠道  */
JXFS  varchar2(30)   ,  /* 计息方式  */
BZJBL  decimal(16,2)   ,  /* 保证金比例  */
BZJBZ  varchar2(3)   ,  /* 保证金币种  */
BZJJE  decimal(16,2)   ,  /* 保证金金额  */
BZJZH  varchar2(60)   ,  /* 保证金账号  */
PJHM  varchar2(400)   ,  /* 票据号码  */
PMJE  decimal(16,2)   ,  /* 票面金额  */
XDYXM  varchar2(100)   ,  /* 信贷员姓名  */
XDYGH  varchar2(30)   ,  /* 信贷员工号  */
XZBZ  varchar2(4)   ,  /* 现转标志  */
LJQKQS  integer   ,  /* 累计欠款期数  */
LXQKQS  integer   ,  /* 连续欠款期数  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index DGXDYWJJ_idx0 on DGXDYWJJ(XDJJH ,CJRQ ,XDJJH ,CJRQ );
create table DBGX (
DBHTH  varchar2(100)  not null  ,  /* 担保合同号  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
DBLX  varchar2(30)   ,  /* 担保类型  */
DBHTLX  varchar2(30)   ,  /* 担保合同类型  */
BZRLB  varchar2(6)   ,  /* 保证人类别  */
BZRMC  varchar2(200)   ,  /* 保证人名称  */
ZJLB  varchar2(60)   ,  /* 证件类别  */
ZJHM  varchar2(60)  not null  ,  /* 证件号码  */
BZRJZC  decimal(16,2)   ,  /* 保证人净资产  */
DBQSRQ  varchar2(8)   ,  /* 担保起始日期  */
DBDQRQ  varchar2(8)   ,  /* 担保到期日期  */
DBHTZT  varchar2(30)   ,  /* 担保合同状态  */
DBHTQDRQ  varchar2(8)   ,  /* 担保合同签订日期  */
DBHTSXRQ  varchar2(8)   ,  /* 担保合同生效日期  */
DBHTDQRQ  varchar2(8)   ,  /* 担保合同到期日期  */
DBBZ  varchar2(3)   ,  /* 担保币种  */
DBZJE  decimal(16,2)   ,  /* 担保总金额  */
DBWPXH  varchar2(1000)   ,  /* 担保物品顺序  */
JLYGH  varchar2(30)   ,  /* 建立员工号  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
DBHTH  varchar2(100)  not null  ,  /* 担保合同号  */
BDBHTH  varchar2(100)  not null  ,  /* 被担保合同号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
DBLX  varchar2(30)   ,  /* 担保类型  */
DBJE  decimal(16,2)   ,  /* 担保金额  */
DBQSRQ  varchar2(8)   ,  /* 担保起始日期  */
DBDQRQ  varchar2(8)   ,  /* 担保到期日期  */
DBZT  varchar2(6)   ,  /* 担保状态  */
JLDBYGH  varchar2(30)   ,  /* 建立担保员工号  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index DBGX_idx0 on DBGX(DBHTH ,ZJHM ,CJRQ ,DBHTH ,BDBHTH ,CJRQ );
create table JJKXX (
ZHDYWBH  varchar2(60)  not null  ,  /* 质或抵押物编号  */
DBHTH  varchar2(100)   ,  /* 担保合同号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
ZHDYWMC  varchar2(1000)   ,  /* 质或抵押物名称  */
ZHDYWLX  varchar2(300)   ,  /* 质或抵押物类型  */
ZHDYWZMJZ  decimal(16,2)   ,  /* 质或抵押物账面价值  */
BZ  varchar2(3)   ,  /* 币种  */
YXRDJZ  decimal(16,2)   ,  /* 银行认定价值  */
PGJZ  decimal(16,2)   ,  /* 评估价值  */
PGRQ  varchar2(8)   ,  /* 评估日期  */
PGJGMC  varchar2(200)   ,  /* 评估机构名称  */
ZHDYL  decimal(16,2)   ,  /* 质或抵押率  */
DYWSYQRMC  varchar2(200)   ,  /* 抵押物所有权人名称  */
YDYJZ  decimal(16,2)   ,  /* 已抵押价值  */
DJRQ  varchar2(8)   ,  /* 登记日期  */
SWSQRQ  varchar2(8)   ,  /* 实物收取日期  */
DJJG  varchar2(200)   ,  /* 登记机构  */
CZJG  varchar2(30)   ,  /* 操作机构  */
DBQSRQ  varchar2(8)   ,  /* 担保起始日期  */
DBDQRQ  varchar2(8)   ,  /* 担保到期日期  */
ZYPZZH  varchar2(60)   ,  /* 质押票证账号  */
ZYPZLX  varchar2(60)   ,  /* 质押票证类型  */
ZYPZHM  varchar2(300)   ,  /* 质押票证号码  */
ZYPZJE  decimal(16,2)   ,  /* 质押票证金额  */
ZYPZQFJG  varchar2(30)   ,  /* 质押票证签发机构  */
ZYPZKLRQ  varchar2(8)   ,  /* 质押票证开立日期  */
BXDH  varchar2(300)   ,  /* 保险单号  */
HBRQ  varchar2(8)   ,  /* 核保日期  */
HBRYXM  varchar2(100)   ,  /* 核保人一姓名  */
HBREXM  varchar2(100)   ,  /* 核保人二姓名  */
QZDJHM  varchar2(300)   ,  /* 权证登记号码  */
QZMC  varchar2(200)   ,  /* 权证名称  */
QZYXDQRQ  varchar2(8)   ,  /* 权证有效到期日期  */
DJYXZZRQ  varchar2(8)   ,  /* 登记有效终止日期  */
SFNRBWHS  varchar2(4)   ,  /* 是否纳入表外核算  */
BWHSKSRQ  varchar2(8)   ,  /* 表外核算开始日期  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
KH  varchar2(60)  not null  ,  /* 卡号  */
HQCKZH  varchar2(60)  not null  ,  /* 活期存款账号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
ZJLB  varchar2(60)   ,  /* 证件类别  */
ZJHM  varchar2(60)   ,  /* 证件号码  */
JJKCPMC  varchar2(200)   ,  /* 借记卡产品名称  */
KPZT  varchar2(30)   ,  /* 卡片状态  */
YGBZ  varchar2(4)   ,  /* 员工标志  */
KKRQ  varchar2(8)   ,  /* 开卡日期  */
KKGYH  varchar2(30)   ,  /* 开卡柜员号  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index JJKXX_idx0 on JJKXX(ZHDYWBH ,CJRQ ,KH ,HQCKZH ,CJRQ );
create table XYKXX (
CZH  varchar2(60)  not null  ,  /* 存折号  */
HQCKZH  varchar2(60)   ,  /* 存款账号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
ZJLB  varchar2(60)   ,  /* 证件类别  */
ZJHM  varchar2(60)   ,  /* 证件号码  */
CZLX  varchar2(20)   ,  /* 存折类型  */
CZZT  varchar2(30)   ,  /* 存折状态  */
YGBZ  varchar2(4)   ,  /* 员工标志  */
QYRQ  varchar2(8)   ,  /* 启用日期  */
QYGYH  varchar2(30)   ,  /* 启用柜员号  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
KH  varchar2(60)  not null  ,  /* 卡号  */
XYKZH  varchar2(60)   ,  /* 信用卡账户  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
ZJLB  varchar2(60)   ,  /* 证件类别  */
ZJHM  varchar2(60)   ,  /* 证件号码  */
KPMC  varchar2(60)   ,  /* 卡片名称  */
KPJB  varchar2(60)   ,  /* 卡片级别  */
KPZT  varchar2(30)   ,  /* 卡片状态  */
KZZMC  varchar2(1000)   ,  /* 卡组织名称  */
YGKBZ  varchar2(4)   ,  /* 员工卡标志  */
FSKBZ  varchar2(4)   ,  /* 附属卡标志  */
ZKH  varchar2(60)   ,  /* 主卡号  */
NFBZ  varchar2(4)   ,  /* 年费标志  */
BBXYED  decimal(16,2)   ,  /* 本币信用额度  */
WBXYED  decimal(16,2)   ,  /* 外币信用额度  */
WBBZ  varchar2(3)   ,  /* 外币币种  */
BBXJZQED  decimal(16,2)   ,  /* 本币现金支取额度  */
WBXJZQED  decimal(16,2)   ,  /* 外币现金支取额度  */
ZKRQ  varchar2(8)   ,  /* 制卡日期  */
SLRQ  varchar2(8)   ,  /* 受理日期  */
SLYGH  varchar2(30)   ,  /* 受理员工号  */
KKRQ  varchar2(8)   ,  /* 开卡日期  */
KKYGH  varchar2(30)   ,  /* 开卡员工号  */
XKRQ  varchar2(8)   ,  /* 销卡日期  */
XKYGH  varchar2(30)   ,  /* 销卡员工号  */
ZHZT  varchar2(60)   ,  /* 账户状态  */
BBQXJE  decimal(16,2)   ,  /* 本币取现金额  */
BBXFJE  decimal(16,2)   ,  /* 本币消费金额  */
BBTZJE  decimal(16,2)   ,  /* 本币透支金额  */
WBXFJE  decimal(16,2)   ,  /* 外币消费金额  */
WBQXJE  decimal(16,2)   ,  /* 外币取现金额  */
WBTZJE  decimal(16,2)   ,  /* 外币透支金额  */
BBYE  decimal(16,2)   ,  /* 本币余额  */
WBYE  decimal(16,2)   ,  /* 外币余额  */
DJYE  decimal(16,2)   ,  /* 冻结金额  */
BLJE  decimal(16,2)   ,  /* 保留金额  */
BNLJXFJE  decimal(16,2)   ,  /* 当月累计透支金额  */
LSED  decimal(16,2)   ,  /* 临时额度  */
DQQFJE  decimal(16,2)   ,  /* 当前欠费金额  */
DBLX  varchar2(6)   ,  /* 担保类型  */
DBSM  varchar2(400)   ,  /* 担保说明  */
DKWJFL  varchar2(6)   ,  /* 贷款五级分类  */
DQTZLX  decimal(16,2)   ,  /* 当前透支利息  */
ZHDHJYRQ  varchar2(8)   ,  /* 最后动户交易日期  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index XYKXX_idx0 on XYKXX(CZH ,CJRQ ,KH ,CJRQ );
create table SXXX (
KH  varchar2(60)   ,  /* 卡号  */
XYKZH  varchar2(60)   ,  /* 信用卡账户  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
BZ  varchar2(3)   ,  /* 币种  */
JYJZRQ  varchar2(8)  not null  ,  /* 交易记账日期  */
HXJYLSH  varchar2(60)  not null  ,  /* 核心交易流水号  */
ZJYLSH  varchar2(30)  not null  ,  /* 子交易流水号  */
BCXH  integer  not null  ,  /* 笔次序号  */
KPJYLX  varchar2(60)   ,  /* 卡片交易类型  */
CHLB  varchar2(12)   ,  /* 钞汇类别  */
XZBZ  varchar2(4)   ,  /* 现转标志  */
JYPZH  varchar2(60)   ,  /* 交易凭证号  */
JYJDBZ  varchar2(12)   ,  /* 交易借贷标志  */
JYJE  decimal(16,2)   ,  /* 交易金额  */
KHSXFJE  decimal(16,2)   ,  /* 客户手续费金额  */
QKGHCX  varchar2(30)   ,  /* 欠款归还次序  */
JYQXRQ  varchar2(8)   ,  /* 交易起息日期  */
JYFSRQ  varchar2(8)   ,  /* 交易发生日期  */
JYZDRQ  varchar2(8)   ,  /* 交易账单日期  */
DFZH  varchar2(60)   ,  /* 对方账号  */
FQFKBZ  varchar2(15)   ,  /* 分期付款标志  */
JYQD  varchar2(60)   ,  /* 交易渠道  */
JYSJ  varchar2(6)   ,  /* 交易时间  */
JYGYH  varchar2(30)   ,  /* 交易柜员号  */
JYJGH  varchar2(30)   ,  /* 交易机构号  */
GZZXZ  varchar2(30)   ,  /* 工作站性质  */
GZZBH  varchar2(30)   ,  /* 工作站编号  */
ZY  varchar2(400)   ,  /* 摘要  */
BZH  varchar2(200)   ,  /* 备注  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
SXXYH  varchar2(60)  not null  ,  /* 授信协议号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
FSRQ  varchar2(8)   ,  /* 发生日期  */
KHMC  varchar2(200)   ,  /* 客户名称  */
SXZL  varchar2(30)   ,  /* 授信主体种类  */
SXXYMC  varchar2(400)   ,  /* 授信协议名称  */
EDJE  decimal(16,2)   ,  /* 额度金额  */
BZ  varchar2(3)   ,  /* 币种  */
SXRQ  varchar2(8)   ,  /* 生效日期  */
SXZT  varchar2(6)   ,  /* 授信状态  */
SXKSRQ  varchar2(8)   ,  /* 授信开始日期  */
SXDQRQ  varchar2(8)   ,  /* 授信到期日期  */
SCSXRQ  varchar2(8)   ,  /* 首次授信日期  */
JCDYJ  varchar2(2000)   ,  /* 决策单意见  */
ZZSPR  varchar2(30)   ,  /* 最终审批人  */
SFXHED  varchar2(4)   ,  /* 是否循环额度  */
SFLSED  varchar2(4)   ,  /* 是否临时额度  */
SXYGH  varchar2(30)   ,  /* 授信员工号  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index SXXX_idx0 on SXXX(JYJZRQ ,HXJYLSH ,ZJYLSH ,BCXH ,CJRQ ,SXXYH ,CJRQ );
create table DKZQ (
XDJJH  varchar2(100)  not null  ,  /* 信贷借据号  */
XDHTH  varchar2(100)   ,  /* 信贷合同号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
KMGSJG  varchar2(30)   ,  /* 科目归属机构  */
BZ  varchar2(3)   ,  /* 币种  */
SHDKBJ  decimal(16,2)   ,  /* 实核贷款本金  */
SHBNLX  decimal(16,2)   ,  /* 实核表内利息  */
SHBWLX  decimal(16,2)   ,  /* 实核表外利息  */
HXRQ  varchar2(8)  not null  ,  /* 核销日期  */
HXSHBJ  decimal(16,2)   ,  /* 核销收回本金  */
HXSHBNLX  decimal(16,2)   ,  /* 核销收回表内利息  */
HXSHBWLX  decimal(16,2)   ,  /* 核销收回表外利息  */
SHBZ  varchar2(4)   ,  /* 收回标志  */
HXSHGYH  varchar2(30)   ,  /* 核销收回柜员号  */
HXSHRQ  varchar2(8)  not null  ,  /* 核销收回日期  */
BZH  varchar2(200)   ,  /* 备注  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
DKZQBH  varchar2(60)  not null  ,  /* 贷款展期编号  */
XDJJH  varchar2(100)   ,  /* 信贷借据号  */
XDHTH  varchar2(100)   ,  /* 信贷合同号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
ZQRQ  varchar2(8)   ,  /* 展期日期  */
ZQDQRQ  varchar2(8)   ,  /* 展期到期日期  */
ZQJE  decimal(16,2)   ,  /* 展期金额  */
YLL  decimal(16,2)   ,  /* 原利率  */
LLLX  varchar2(6)   ,  /* 利率类型  */
ZQJZLL  decimal(16,2)   ,  /* 展期基准利率  */
LLFD  integer   ,  /* 利率浮动  */
YHTH  varchar2(100)   ,  /* 原合同号  */
YJJH  varchar2(100)   ,  /* 原借据号  */
JYGYH  varchar2(30)   ,  /* 交易柜员号  */
SQGYH  varchar2(30)   ,  /* 授权柜员号  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index DKZQ_idx0 on DKZQ(XDJJH ,HXRQ ,HXSHRQ ,CJRQ ,DKZQBH ,CJRQ );
create table ZCZRGXB (
ZRHTH  varchar2(100)  not null  ,  /* 转让合同号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
JYDSBH  varchar2(60)   ,  /* 交易对手编号  */
JYDSMC  varchar2(200)   ,  /* 交易对手名称  */
XDJYLX  varchar2(60)   ,  /* 信贷交易类型  */
JYZCLX  varchar2(30)   ,  /* 交易资产类型  */
BZ  varchar2(3)   ,  /* 币种  */
ZRDKBJZE  decimal(16,2)   ,  /* 转让贷款本金总额  */
ZRDKLXZE  decimal(16,2)   ,  /* 转让贷款利息总额  */
ZRSXF  decimal(16,2)   ,  /* 转让手续费  */
ZRZJ  decimal(16,2)   ,  /* 转让总价  */
HGLL  decimal(16,2)   ,  /* 回购利率  */
ZRJGRQ  varchar2(8)   ,  /* 转让交割日期  */
HGJZRQ  varchar2(8)   ,  /* 回购基准日期  */
ZRHTQSRQ  varchar2(8)   ,  /* 转让合同起始日期  */
ZRHTDQRQ  varchar2(8)   ,  /* 转让合同到期日期  */
JYDSZZH  varchar2(60)   ,  /* 交易对手转账账号  */
JYDSZZZHHM  varchar2(200)   ,  /* 交易对手转账账号户名  */
JYDSXH  varchar2(30)   ,  /* 交易对手行号  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
ZRHTH  varchar2(100)   ,  /* 转让合同号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
XDJJH  varchar2(100)  not null  ,  /* 信贷借据号  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index ZCZRGXB_idx0 on ZCZRGXB(ZRHTH ,CJRQ ,XDJJH ,CJRQ );
create table JYLS (
TZRQ  varchar2(8)  not null  ,  /* 调整日期  */
XDJJH  varchar2(100)  not null  ,  /* 信贷借据号  */
XDHTH  varchar2(100)   ,  /* 信贷合同号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
YMXKMBH  varchar2(60)   ,  /* 原明细科目编号  */
YMXKMMC  varchar2(300)   ,  /* 原明细科目名称  */
YWJXT  varchar2(6)   ,  /* 原五级形态  */
XMXKMBH  varchar2(60)   ,  /* 新明细科目编号  */
XMXKMMC  varchar2(300)   ,  /* 新明细科目名称  */
XWJXT  varchar2(6)   ,  /* 新五级形态  */
BZ  varchar2(3)   ,  /* 币种  */
ZRJE  decimal(16,2)   ,  /* 转入金额  */
ZCJE  decimal(16,2)   ,  /* 转出金额  */
KHMC  varchar2(200)   ,  /* 客户名称  */
JBGYH  varchar2(30)   ,  /* 经办员工号  */
TZGYH  varchar2(30)   ,  /* 调整员工号  */
SQGYH  varchar2(30)   ,  /* 授权员工号  */
SPGYH  varchar2(30)   ,  /* 审批员工号  */
BDYY  varchar2(60)   ,  /* 变动原因  */
BDFS  varchar2(30)   ,  /* 变动方式  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
HXJYLSH  varchar2(60)  not null  ,  /* 核心交易流水号  */
ZJYLSH  varchar2(30)  not null  ,  /* 子交易流水号  */
BCXH  integer  not null  ,  /* 笔次序号  */
JYRQ  varchar2(8)  not null  ,  /* 交易日期  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
JYSJ  varchar2(6)   ,  /* 交易时间  */
JZRQ  varchar2(8)   ,  /* 记账日期  */
JZSJ  varchar2(6)   ,  /* 记账时间  */
JYJGMC  varchar2(200)   ,  /* 交易机构名称  */
JYZH  varchar2(60)  not null  ,  /* 交易账号  */
JYHM  varchar2(200)   ,  /* 交易户名  */
JYXTMC  varchar2(60)   ,  /* 交易系统名称  */
DFXH  varchar2(30)   ,  /* 对方行号  */
DFJGMC  varchar2(200)   ,  /* 对方机构名称  */
DFZH  varchar2(60)   ,  /* 对方账号  */
DFHM  varchar2(200)   ,  /* 对方户名  */
JYJE  decimal(16,2)   ,  /* 交易金额  */
ZHYE  decimal(16,2)   ,  /* 账户余额  */
JYJDBZ  varchar2(12)   ,  /* 交易借贷标志  */
XZBZ  varchar2(4)   ,  /* 现转标志  */
BZ  varchar2(3)   ,  /* 币种  */
YWLX  integer   ,  /* 业务类型  */
JYLX  varchar2(60)   ,  /* 交易类型  */
JYQD  varchar2(60)   ,  /* 交易渠道  */
JYJZMC  varchar2(6)   ,  /* 交易介质名称  */
JYJZH  varchar2(60)   ,  /* 交易介质号  */
CZGYH  varchar2(30)   ,  /* 操作柜员号  */
GYLSH  varchar2(30)   ,  /* 柜员流水号  */
FHGYH  varchar2(30)   ,  /* 复核柜员号  */
ZY  varchar2(400)   ,  /* 摘要  */
ZPZZL  varchar2(30)   ,  /* 主凭证种类  */
ZPZH  varchar2(60)   ,  /* 主凭证号  */
FPZZL  varchar2(30)   ,  /* 副凭证种类  */
FPZH  varchar2(60)   ,  /* 副凭证号  */
CBMBZ  varchar2(10)   ,  /* 冲补抹标志  */
SJC  varchar2(20)   ,  /* 时间戳  */
ZHBZ  varchar2(6)   ,  /* 账户标志  */
KXHBZ  varchar2(6)   ,  /* 开销户标志  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index JYLS_idx0 on JYLS(TZRQ ,XDJJH ,CJRQ ,HXJYLSH ,ZJYLSH ,BCXH ,JYRQ ,JYZH ,CJRQ );
create table SNTJB (
JRJGDM  varchar2(30)   ,  /* 金融机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)  not null  ,  /* 内部机构号  */
TJKMBH  varchar2(20)  not null  ,  /* 统计科目编号  */
TJKMMC  varchar2(120)   ,  /* 统计科目名称  */
TJKMJE  decimal(16,2)   ,  /* 统计科目金额  */
QXLX  varchar2(6)  not null  ,  /* 期限类型  */
TJRQ  varchar2(8)  not null  ,  /* 统计日期  */
BZ  varchar2(3)  not null  ,  /* 币种  */
DQMC  varchar2(60)   ,  /* 地区名称  */
XZQHDM  varchar2(20)   ,  /* 行政区划代码  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
JRJGDM  varchar2(30)   ,  /* 金融机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)  not null  ,  /* 内部机构号  */
TJKMBH  varchar2(20)  not null  ,  /* 统计科目编号  */
TJKMMC  varchar2(120)   ,  /* 统计科目名称  */
TJKMJE  decimal(16,2)   ,  /* 统计科目金额  */
QXLX  varchar2(6)  not null  ,  /* 期限类型  */
TJRQ  varchar2(8)  not null  ,  /* 统计日期  */
BZ  varchar2(3)  not null  ,  /* 币种  */
DQMC  varchar2(60)   ,  /* 地区名称  */
XZQHDM  varchar2(20)   ,  /* 行政区划代码  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index SNTJB_idx0 on SNTJB(NBJGH ,TJKMBH ,QXLX ,TJRQ ,BZ ,CJRQ ,NBJGH ,TJKMBH ,QXLX ,TJRQ ,BZ ,CJRQ );
create table JRGJXXB (
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
JYBH  varchar2(40)  not null  ,  /* 交易编号  */
LCCPDJBM  varchar2(30)   ,  /* 理财产品登记编码  */
JYLX  varchar2(6)   ,  /* 资金交易类型  */
JYZL  varchar2(60)   ,  /* 资金交易子类  */
JRGJBH  varchar2(60)  not null  ,  /* 金融工具编号  */
JYZHLX  varchar2(12)   ,  /* 账户类型  */
HTH  varchar2(100)   ,  /* 合同号  */
HTJE  decimal(16,2)   ,  /* 合同金额  */
BZ  varchar2(3)   ,  /* 币种  */
JCZCKHMC  varchar2(200)   ,  /* 基础资产客户名称  */
JCZCSSHY  varchar2(100)   ,  /* 基础资产所属行业  */
JCZCSFWBHKH  varchar2(4)   ,  /* 基础资产是否为本行客户  */
JCZCZXFS  varchar2(30)   ,  /* 基础资产增信方式  */
JCZCZXR  varchar2(200)   ,  /* 基础资产增信人  */
JYGY  varchar2(100)   ,  /* 交易柜员  */
SPR  varchar2(100)   ,  /* 审批人  */
JYDSDM  varchar2(60)   ,  /* 交易对手代码  */
JYDSMC  varchar2(200)   ,  /* 交易对手名称  */
JYRQ  varchar2(8)   ,  /* 交易日期  */
QSRQ  varchar2(8)   ,  /* 起始日期  */
DQRQ  varchar2(8)   ,  /* 到期日期  */
MMBZ  varchar2(6)   ,  /* 买卖标志  */
JYQBZ  varchar2(6)   ,  /* 即远期标志  */
MRBZ  varchar2(3)   ,  /* 买入币种  */
MRJE  decimal(16,2)   ,  /* 买入金额  */
MCBZ  varchar2(3)   ,  /* 卖出币种  */
MCJE  decimal(16,2)   ,  /* 卖出金额  */
CJJG  varchar2(100 )   ,  /* 成交价格  */
YWZT  varchar2(20)   ,  /* 交易状态  */
FHRQ  varchar2(8)   ,  /* 复核日期  */
QXRQ  varchar2(8)   ,  /* 取消日期  */
SJJGRQ  varchar2(8)   ,  /* 实际交割日期  */
QSBZ  varchar2(4)   ,  /* 清算标志  */
JFZH  varchar2(60)   ,  /* 借方账号  */
DFZH  varchar2(60)   ,  /* 贷方账号  */
JFJE  decimal(16,2)   ,  /* 借方金额  */
DFJE  decimal(16,2)   ,  /* 贷方金额  */
JFBZ  varchar2(3)   ,  /* 借方币种  */
DFBZ  varchar2(3)   ,  /* 贷方币种  */
JFLL  decimal(16,2)   ,  /* 借方利率  */
DFLL  decimal(16,2)   ,  /* 贷方利率  */
BZJJYBZ  varchar2(4)   ,  /* 保证金交易标志  */
GLBZJZH  varchar2(60)   ,  /* 关联保证金账户  */
GLYWBH  varchar2(40)   ,  /* 关联业务编号  */
WBGLXTMC  varchar2(100)   ,  /* 外部关联系统名称  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
ZQMC  varchar2(60)   ,  /* 金融工具名称  */
JRGJBH  varchar2(60)  not null  ,  /* 金融工具编号  */
ZCLX  varchar2(60)   ,  /* 资产类型  */
BZ  varchar2(3)   ,  /* 币种  */
FXJG  varchar2(200)   ,  /* 发行机构  */
YXCZQYDM  varchar2(60)   ,  /* 发行机构代码  */
FXGB  varchar2(2)   ,  /* 发行国别  */
DBJG  varchar2(200)   ,  /* 担保机构  */
CPPJ  varchar2(20)   ,  /* 产品评级  */
PJJG  varchar2(200)   ,  /* 评级机构  */
FXZTPJ  varchar2(20)   ,  /* 发行主体评级  */
JYZHLX  varchar2(12)   ,  /* 账户类型  */
PMLL  decimal(16,2)   ,  /* 票面利率  */
FXJGE  decimal(16,2)   ,  /* 发行价格  */
FXRQ  varchar2(8)   ,  /* 发行日期  */
SSRQ  varchar2(8)   ,  /* 上市日期  */
QXRQ  varchar2(8)   ,  /* 起息日期  */
DQRQ  varchar2(8)   ,  /* 到期日期  */
LLLX  varchar2(6)   ,  /* 利率类型  */
HQBS  varchar2(4)   ,  /* 含权标识  */
ZJPGJG  decimal(16,2)   ,  /* 最近评估价格  */
PGJGSJ  varchar2(8)   ,  /* 评估价格时间  */
YE  decimal(16,2)   ,  /* 余额  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index JRGJXXB_idx0 on JRGJXXB(JYBH ,JRGJBH ,CJRQ ,JRGJBH ,CJRQ );
create table LCCPXXB (
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
WB  varchar2(3)  not null  ,  /* 外币  */
BB  varchar2(3)  not null  ,  /* 本币  */
ZJJ  decimal(16,2)   ,  /* 中间价  */
JZJ  decimal(16,2)   ,  /* 基准价  */
HLRQ  varchar2(8)  not null  ,  /* 汇率日期  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
CPMC  varchar2(200)   ,  /* 产品名称  */
CPDJBM  varchar2(30)   ,  /* 理财产品登记编码  */
HNBSM  varchar2(30)  not null  ,  /* 行内标识码  */
CPPP  varchar2(30)   ,  /* 产品品牌  */
CPQC  integer   ,  /* 产品期次  */
CPSPRSFZH  varchar2(60)   ,  /* 产品审批人身份证号  */
CPSPRXM  varchar2(100)   ,  /* 产品审批人姓名  */
CPSJRSFZH  varchar2(60)   ,  /* 产品设计人身份证号  */
CPSJRXM  varchar2(100)   ,  /* 产品设计人姓名  */
TZJLSFZH  varchar2(60)   ,  /* 投资经理身份证号  */
TZJLXM  varchar2(100)   ,  /* 投资经理姓名  */
CPSYLX  varchar2(30)   ,  /* 产品收益类型  */
CPQX  varchar2(30)   ,  /* 产品期限  */
TZZLX  varchar2(30)   ,  /* 投资者类型  */
ZJTXDQ  varchar2(15)   ,  /* 资金投向地区  */
CPTZGJHDQ  varchar2(60)   ,  /* 产品投资国家或地区  */
LCYWFWMS  varchar2(30)   ,  /* 理财业务服务模式  */
CPYZMS  varchar2(30)   ,  /* 产品运作模式  */
KJHSFS  varchar2(6)   ,  /* 会计核算方式  */
CPZCPZFS  varchar2(30)   ,  /* 产品资产配置方式  */
CPGLMS  varchar2(30)   ,  /* 产品管理模式  */
SJGLLMC  varchar2(200)   ,  /* 实际管理人名称  */
CPDJFS  varchar2(30)   ,  /* 产品定价方式  */
TZLX  varchar2(30)   ,  /* 投资类型  */
HZMS  varchar2(30)   ,  /* 合作模式  */
HZJGMC  varchar2(200)   ,  /* 合作机构名称  */
TZZCZLJBL  varchar2(2000)   ,  /* 投资资产种类及比例  */
SFYYQSYL  varchar2(4)   ,  /* 是否有预期收益率  */
YJKHZGNSYL  decimal(16,2)   ,  /* 预计客户最高年收益率  */
YJKHZDNSYL  decimal(16,2)   ,  /* 预计客户最低年收益率  */
SFYSYLCSYJ  varchar2(4)   ,  /* 是否有收益率测算依据  */
TZZFXPH  varchar2(9)   ,  /* 投资者风险偏好  */
CPXSQY  varchar2(2000)   ,  /* 产品销售区域  */
MJBZ  varchar2(3)   ,  /* 募集币种  */
DFBJBZ  varchar2(3)   ,  /* 兑付本金币种  */
DFSYBZ  varchar2(3)   ,  /* 兑付收益币种  */
QDXSJE  decimal(16,2)   ,  /* 起点销售金额  */
JHMJJE  decimal(16,2)   ,  /* 计划募集金额  */
MJQSRQ  varchar2(8)   ,  /* 募集起始日期  */
TZBJDZR  varchar2(4)   ,  /* 投资本金到账日  */
TZSYDZR  varchar2(4)   ,  /* 投资收益到账日  */
XSSXFL  decimal(16,2)   ,  /* 销售手续费率  */
JNTGJGMC  varchar2(200)   ,  /* 境内托管机构名称  */
JNTGJGDM  varchar2(30)   ,  /* 境内托管机构代码  */
JWTGJGGB  varchar2(60)   ,  /* 境外托管机构国别  */
JWTGJGMC  varchar2(200)   ,  /* 境外托管机构名称  */
LCCPZJTGZH  varchar2(60)   ,  /* 理财产品资金托管账号  */
LCCPZJTGZHMC  varchar2(200)   ,  /* 理财产品资金托管账户名称  */
TGFL  decimal(16,2)   ,  /* 托管费率  */
CPFXDJ  varchar2(30)   ,  /* 产品风险等级  */
FXJGTQZZQBS  varchar2(4)   ,  /* 发行机构提前终止权标识  */
KHSHQBS  varchar2(4)   ,  /* 客户赎回权标识  */
CPZXBS  varchar2(4)   ,  /* 产品增信标识  */
CPZXJGLX  varchar2(30)   ,  /* 产品增信机构类型  */
CPZXXS  varchar2(12)   ,  /* 产品增信形式  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index LCCPXXB_idx0 on LCCPXXB(WB ,BB ,HLRQ ,CJRQ ,HNBSM ,CJRQ );
create table KHLCZHXXB (
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
LCCPMC  varchar2(200)   ,  /* 理财产品名称  */
HNBSM  varchar2(30)  not null  ,  /* 行内标识码  */
SJMJJE  decimal(16,2)   ,  /* 实际募集金额  */
CPQSRQ  varchar2(8)   ,  /* 产品起始日期  */
CPYJZZRQ  varchar2(8)   ,  /* 产品预计终止日期  */
FXDJR  varchar2(8)   ,  /* 发行登记日  */
YHDSJSXSR  decimal(16,2)   ,  /* 银行端实际实现收入  */
DFKHSY  decimal(16,2)   ,  /* 兑付客户收益  */
KHDSJNHSYL  decimal(16,2)   ,  /* 客户端实际年化收益率  */
CPDSJNHSYL  decimal(16,2)   ,  /* 产品端实际年化收益率  */
ZZDJR  varchar2(8)   ,  /* 终止登记日  */
CJRQ  varchar2(8)  not null  ,  /* 采集日期  */
YXJGDM  varchar2(30)   ,  /* 银行机构代码  */
JRXKZH  varchar2(30)   ,  /* 金融许可证号  */
NBJGH  varchar2(30)   ,  /* 内部机构号  */
MXKMBH  varchar2(60)   ,  /* 明细科目编号  */
YXJGMC  varchar2(200)   ,  /* 银行机构名称  */
MXKMMC  varchar2(300)   ,  /* 明细科目名称  */
BZ  varchar2(3)   ,  /* 币种  */
LCZH  varchar2(60)  not null  ,  /* 理财账号  */
KHTYBH  varchar2(60)   ,  /* 客户统一编号  */
KHXM  varchar2(100)   ,  /* 客户姓名  */
GLHQCKZH  varchar2(60)  not null  ,  /* 关联活期存款账号  */
LCCPMC  varchar2(200)   ,  /* 理财产品名称  */
HNBSM  varchar2(30)  not null  ,  /* 行内标识码  */
FEZS  decimal(16,2)   ,  /* 份额总数  */
DJFE  decimal(16,2)   ,  /* 冻结份额  */
HLZTZBZ  varchar2(4)   ,  /* 再投资标志  */
BQSY  decimal(16,2)   ,  /* 本期收益  */
LJSY  decimal(16,2)   ,  /* 累计收益  */
MRCB  decimal(16,2)   ,  /* 买入成本  */
BQQSRQ  varchar2(8)   ,  /* 本期起始日期  */
BQDQRQ  varchar2(8)   ,  /* 本期到期日期  */
KHRQ  varchar2(8)   ,  /* 开户日期  */
SCDHRQ  varchar2(8)   ,  /* 上次动户日期  */
CJRQ  varchar2(8)  not null     /* 采集日期  */
);

create index KHLCZHXXB_idx0 on KHLCZHXXB(HNBSM ,CJRQ ,LCZH ,GLHQCKZH ,HNBSM ,CJRQ );
