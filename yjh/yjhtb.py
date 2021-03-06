# -*- coding: utf-8 -*-
"""
Created on Wed Oct 16 16:26:59 2019
@author: glj
"""
import xlrd
import calendar
import datetime,time
import pickle

# filepath=r'D:/download/yjh/table2019.xlsx'
file_r = 'D:/projects/traditional-Chinese-medicine/yjh/yjhtb.xls'
file_w = 'D:/projects/traditional-Chinese-medicine/yjh/cre_tab.sql'
ctl_dir= 'D:/projects/traditional-Chinese-medicine/yjh/ctl/'
fd_delimter = '\01'

def read_excel():
    # 打开文件
    workbook = xlrd.open_workbook(file_r)
    # 根据sheet名称获取sheet内容
    sheet_tb = workbook.sheet_by_name('数据结构')  # 根据sheet页名字获取sheet
    # 取各表字段名、字段类型、字段说明
    tab_name = 'empty'
    tab_file = 'empty'
    tab_seq = 'empty'
    tab_flag = -1
    tables = []
    array = {}
    #print (sheet_tb.nrows)
    for rown in range(sheet_tb.nrows):
        tb_file1 = sheet_tb.cell_value(rown, 2)
        tb_name1 = sheet_tb.cell_value(rown, 3)
        tb_seq1 = sheet_tb.cell_value(rown, 4)
        rows = sheet_tb.row_values(rown)
        #if not tb_seq1.isspace() :
        if len(tb_seq1) > 0 : #表头行或标题行
            try:
                n=int(tb_seq1)
            except ValueError as e : # 非表头行,忽略
                continue
            except Exception as e :
                print(e)
            else: #表头行
                #print (tb_file1)
                if tab_flag == -1: # 首次进入表头
                    tab_flag = n
                else :
                    array[tab_file] = tables

                tab_file = tb_file1
                tab_name = tb_name1
                tab_seq = tb_seq1
                tables = []
                # print ("fileds of table:",len(tables))
                # print (tables)
            finally:
                #print('无论异常与否,都会执行该模块,通常是进行清理工作')
                pass
        else : # 信息行或字段行
            tab_fd = sheet_tb.cell_value(rown, 6) #字段名
            if len(tab_fd) < 1 : #空行
                #print("not useful rows")
                '''
                try:
                    raise NameError("字段解析出错")
                except NameError as e:
                    print('详细信息 表名+中文名+字段名:'+tab_file+" :"+tab_name+" :"+tab_fd) 
                '''
                continue
            else :
                #print(rows)
                tab_sm = sheet_tb.cell_value(rown, 5)  #字段说明
                #tab_sm = ''.join(rows[5:6])  #字段说明
                #print(tab_sm)
                tab_lx = sheet_tb.cell_value(rown, 10) #字段类型
                tab_bz = sheet_tb.cell_value(rown, 11) #备注
                '''
                print(tab_fd)
                print(tab_sm)
                print(tab_lx)
                print(tab_bz)
                '''  
                tables.append(tab_fd)
                tables.append(tab_lx)
                tables.append(tab_bz)
                tables.append(tab_sm)
    array[tab_file] = tables #最后一张表
    return(array)

def fuc_char(fld):
    #print('i am varchar')
    tmp = ''
    if(fld[1] == '.'):
        tmp = fld[3:]
    else:
        tmp = fld[1:]
    return r'varchar2('+tmp+r')',tmp
    
def fuc_double(fld):
    #print('i am double')
    return(r'decimal(16,2)','')
    
def fuc_int(fld):
    #print('i am int')
    return(r'integer','')

def fuc_def(fld):
    #print('i am def')
    return('error','')
    
def func_zdlx(fld):
    return switch.get(fld[0],'fuc_def')(fld)

switch = {
        "C": fuc_char,
        "D": fuc_double,
        "I": fuc_int
}
    
def write_sql(**dd):
    switch_fld = {
        1:lambda x:[x+r' ',''],
        2:func_zdlx,
        0:lambda x:[r', /*' +x +r'*/',''],
        3:lambda x:[' ' if (x.find('PK') == -1) else r' not null ' ,''],
        4:lambda x:r' /*' +x +r'*/'
    }
    with open(file_w,'w',encoding='utf-8') as ftb:
        for k,v in dd.items():
        #print(k,v)
            ftb.write(r'create table '+k+' (\n')
            lend=len(v)
            str1=''
            #print(lend)
            str2=''
            sqlSeq = ['zdmc''zdlx','zdPK','zdsm']
            #sqlDict = {'zdmc':'','zdlx':'','zdys':'','zdPK':''}
            sqlDict = dict.fromkeys(sqlSeq,'')
            indexArray = []
            ctlArray = []
            for index,x in enumerate(v) :
                if index == lend-1: #结尾
                    str1 = switch_fld.get(4,'error')(x)
                    sqlDict['zdsm'] = str1
                    #sqlDict['zdys'] = sqlDict['zdys'].replace( ',' , ' ')
                    #print(sqlDict['zdys'])
                    ftb.write(sqlDict['zdmc']+' '+sqlDict['zdlx']+' '+sqlDict['zdPK']+' '+sqlDict['zdsm']+'\n'+r');'+'\n')
                    #sqlDict = dict.fromkeys(sqlSeq, ' ')
                else:
                    str1,str2 = switch_fld.get((index+1)%4,'0')(x)
                    #print(str1+':'+str2)
                    if ( (index+1)%4 ==1 ) :
                        sqlDict['zdmc'] = str1
                    elif (index+1)%4 == 0 :
                        sqlDict['zdsm'] = str1
                        ftb.write(sqlDict['zdmc']+' '+sqlDict['zdlx']+' '+
                                    sqlDict['zdPK']+' '+sqlDict['zdsm']+'\n')
                        #sqlDict = dict.fromkeys(sqlSeq,'')
                        #str1=''
                    elif (index+1)%4 == 3 :
                        sqlDict['zdPK'] = str1
                        if(sqlDict['zdPK'].find('not') != -1):
                            indexArray.append(sqlDict['zdmc'])
                    else :
                        sqlDict['zdlx'] = str1
                        if( len(str2)>=1 and int(str2) >= 1000 ) :
                            ctlArray.append(
                                sqlDict['zdmc']+r' char(100000) "substr(:'+sqlDict['zdmc']+r',1,'+str2+r')" ')
                        else :
                            ctlArray.append(sqlDict['zdmc'])
            #create index   
            if indexArray :
                str2 = 'create index '+k+'_idx0'+' on '+k+r'('
                for ii,iv in enumerate(indexArray) :
                    #if len(indexArray) == indexArray.index(value) + 1 :
                    if ii == len(indexArray) - 1 :
                        str2 += iv
                    else :
                        str2 += iv + ','
                str2 += r');'
                ftb.write('\n'+str2+'\n')
                '''
                str2=''
                for value in indexArray :
                    str2 = 'create index '+k+'_idx%d'%(indexArray.index(value))+' on '+k+r'(' +value+r');'
                    ftb.write('\n'+str2+'\n')
                '''
            #create  ctl file
            file_ctl = ctl_dir+k+r'.ctl'
            # 取上个月最后一天-->str_rq
            td = datetime.date.today()
            #ym = calendar.monthrange(td.year,td.month)
            #rq = datetime.date( td.year , td.month , ym[1] )
            first_day = datetime.datetime(td.year,td.month,1,23,59,59)
            up_last = first_day - datetime.timedelta(days=1)
            str_rq = up_last.strftime('%Y%m%d')
            with open(file_ctl,'w',encoding='utf-8') as fctl :
                fctl.write('load data\n')
                fctl.write('Characterset UTF8\n')
                fctl.write('infile '+'\'C004H101110102001-'+k+'-'+str_rq+'.txt'+'\'\n')
                fctl.write('append into table '+k+'\n')
                #fctl.write('fields terminated by '+'\'^A\''+'\n')
                fctl.write('fields terminated by '+'\''+fd_delimter+'\''+'\n')
                fctl.write('trailing nullcols\n')
                fctl.write('(\n')
                for n,i in enumerate(ctlArray) :
                    if n == len(ctlArray)-1 :
                        fctl.write(i+'\n')
                    else :
                        fctl.write(i+',\n')
                fctl.write(')\n')

if __name__ == '__main__':
    # 读取Excel
    tb_dict={}
    tb_dict=read_excel()
    sfile = open("dump_tab.txt", "wb")
    pickle.dump(tb_dict, sfile,protocol=2)
    sfile.close()
    #print(tb_dict)
    write_sql(**tb_dict)
