# -*- coding: utf-8 -*-
"""
Created on Wed Oct 16 16:26:59 2019
@author: glj
"""
import xlrd
import calendar
import datetime

# filepath=r'D:/download/yjh/table2019.xlsx'
file_r = 'D:/projects/traditional-Chinese-medicine/yjh/yjhtb.xls'
file_w = 'D:/projects/traditional-Chinese-medicine/yjh/cre_tab.sql'
ctl_dir= 'D:/projects/traditional-Chinese-medicine/yjh/ctl/'

def read_excel():
    # 打开文件
    workbook = xlrd.open_workbook(file_r)
    # 根据sheet名称获取sheet内容
    sheet_tb = workbook.sheet_by_name('数据结构')  # 根据sheet页名字获取sheet
    # 取各表字段名、字段类型、字段说明
    tab_name = 'empty'
    tab_file = 'empty'
    tab_seq = 'empty'
    tab_flag=0
    tables = []
    array = {}
    for rown in range(sheet_tb.nrows):
        tb_file1 = sheet_tb.cell_value(rown, 2)
        tb_name1 = sheet_tb.cell_value(rown, 3)
        tb_seq1 = sheet_tb.cell_value(rown, 4)
        rows = sheet_tb.row_values(rown)
        #if not tb_seq1.isspace() :
        if len(tb_seq1) > 0 :
            try:
                n=int(tb_seq1)
            except ValueError as e : # 非表头信息行,忽略
                continue
            except Exception as e :
                print(e)
            else: #表头行
                if tab_flag == 0: # 首次进入表头
                    tab_flag = n
                    tab_file = tb_file1
                    tab_name = tb_name1
                    tab_seq = tb_seq1
                else :
                    array[tab_file] = tables
                    tables = []
                    tab_flag = 0
                # print ("fileds of table:",len(tables))
                # print (tables)
            finally:
                #print('无论异常与否,都会执行该模块,通常是进行清理工作')
                pass
        # 非数字非空为忽略行
        else : # 无序号行
            tab_fd = sheet_tb.cell_value(rown, 6) #字段名
            if len(tab_fd) < 1 : #无效行
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
                tables.append(tab_sm)
                tables.append(tab_fd)
                tables.append(tab_lx)
                tables.append(tab_bz)
    return(array)

def fuc_char(fld):
    #print('i am varchar')
    tmp = ''
    if(fld[1] == '.'):
        tmp = fld[3:]
    else:
        tmp = fld[1:]
    return r'varchar2('+tmp+r')'
    
def fuc_double(fld):
    #print('i am double')
    return(r'decimal(16,2)')
    
def fuc_int(fld):
    #print('i am int')
    return(r'integer')

def fuc_def(fld):
    #print('i am def')
    return('error')
    
def func_zdlx(fld):
    return switch.get(fld[0],'fuc_def')(fld)

switch = {
        "C": fuc_char,
        "D": fuc_double,
        "I": fuc_int
}
    
def write_sql(**dd):
    switch_fld = {
        2:lambda x:x+r' ',
        3:func_zdlx,
        1:lambda x:r' /* ' +x +r'  */',
        0:lambda x:' ' if (x.find('PK') == -1) else r' not null ' ,
        4:lambda x:r' /* ' +x +r'  */'
    }
    with open(file_w,'w',encoding='utf-8') as ftb:
        for k,v in dd.items():
        #print(k,v)
            ftb.write(r'create table '+k+' (\n')
            lend=len(v)
            str1=''
            #print(lend)
            str2=''
            sqlSeq = ['zdmc','zdlx','zdys','zdPK']
            #sqlDict = {'zdmc':'','zdlx':'','zdys':'','zdPK':''}
            sqlDict = dict.fromkeys(sqlSeq)
            indexArray = []
            ctlArray = []
            for index,x in enumerate(v) :
                if index == lend-1: #结尾
                    str1 = switch_fld.get(0,'error')(x)
                    sqlDict['zdPK'] = str1
                    sqlDict['zdys'] = sqlDict['zdys'].replace( ',' , ' ')
                    #print(sqlDict['zdys'])
                    ftb.write(sqlDict['zdmc']+' '+sqlDict['zdlx']+' '+
                                    sqlDict['zdPK']+' '+sqlDict['zdys']+'\n'+r');'+'\n')
                    sqlDict = dict.fromkeys(sqlSeq)
                    if(str1.find('not') != -1) :
                        indexArray.append(str2)
                else:
                    str1 = switch_fld.get((index+1)%4,'0')(x)
                    if ( (index+1)%4 ==2 ) :
                        sqlDict['zdmc'] = str1
                        str2=str1
                        ctlArray.append(x)
                    elif (index+1)%4 == 0 :
                        sqlDict['zdPK'] = str1
                        ftb.write(sqlDict['zdmc']+' '+sqlDict['zdlx']+' '+
                                    sqlDict['zdPK']+' '+sqlDict['zdys']+'\n')
                        sqlDict = dict.fromkeys(sqlSeq)
                        if(str1.find('not') != -1) :
                            indexArray.append(str2)
                        str1=''
                    elif (index+1)%4 == 1 :
                        sqlDict['zdys'] = r', ' + str1
                    else :
                        sqlDict['zdlx'] = str1
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
                indexArray=[]    
            #create  ctl file
            file_ctl = ctl_dir+k+r'.ctl'
            td = datetime.date.today()
            ym = calendar.monthrange(td.year,td.month)
            #rq = datetime.date( int(str(td.year) ) , int(str(td.month)) , 30 )
            rq = datetime.date( td.year , td.month , ym[1] )
            str_rq = rq.strftime('%Y%m%d')
            with open(file_ctl,'w',encoding='utf-8') as fctl :
                fctl.write('load data\n')
                fctl.write('Characterset UTF8\n')
                fctl.write('infile '+'\'C004H101110102001-'+k+'-'+str_rq+'.txt'+'\'\n')
                fctl.write('append into table '+k+'\n')
                fctl.write('fields terminated by '+'\'^A\''+'\n')
                fctl.write('trailing nullcols\n')
                fctl.write('(\n')
                for n,i in enumerate(ctlArray) :
                    if n == len(ctlArray)-1 :
                        fctl.write(i+'\n')
                    else :
                        fctl.write(i+',\n')
                fctl.write(')\n')
                ctlArray=[]

if __name__ == '__main__':
    # 读取Excel
    tb_dict={}
    tb_dict=read_excel()
    #print(tb_dict)
    write_sql(**tb_dict)
