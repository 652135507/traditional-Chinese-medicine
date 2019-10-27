# -*- coding: utf-8 -*-
"""
Created on Wed Oct 16 16:26:59 2019
@author: glj
"""
import xlrd
# filepath=r'D:/download/yjh/table2019.xlsx'
file_r = r'D:/projects/python/yjh/table2019.xlsx'
file_w = r'D:/projects/python/yjh/cre_tb2.sql'
file_dir=r'D:/projects/python/yjh/'

def read_excel():
    # 打开文件
    workbook = xlrd.open_workbook(file_r)
    # 根据sheet名称获取sheet内容
    sheet_tb = workbook.sheet_by_name('tables')  # 根据sheet页名字获取sheet
    # 取各表字段名、字段类型、字段说明
    tab_name = 'empty'
    tables = []
    array = {}
    for rown in range(sheet_tb.nrows):
        tbn = sheet_tb.cell_value(rown, 2)
        if tbn == '':  # 跳过空行
            continue
        elif tbn != tab_name and tab_name != 'empty':   # 不同的表
            array[tab_name] = tables
            # print ("fileds of table:",len(tables))
            # print (tables)
            tab_name = tbn
            tables=[]
            tbf = sheet_tb.cell_value(rown, 6) #字段名
            if tbf.isspace() is not True and len(tbf) > 1:
                tbv = sheet_tb.cell_value(rown, 7) #字段类型
                tbr = sheet_tb.cell_value(rown, 8) #字段说明
                tbi = sheet_tb.cell_value(rown, 9) #详细说明
                # print(tbf)
                # print(tbv)
                # print(tbr)
                tables.append(tbf)
                tables.append(tbv)
                tables.append(tbi)
                tables.append(tbr)
        else:  # 还在同一个表
            tbf = sheet_tb.cell_value(rown, 6)
            if tbf.isspace() is not True and len(tbf) > 1:
                tbv = sheet_tb.cell_value(rown, 7)
                tbr = sheet_tb.cell_value(rown, 8)
                tbi = sheet_tb.cell_value(rown, 9)
                #  print(tbf)
                #  print(tbv)
                #  print(tbr)
                tables.append(tbf)
                tables.append(tbv)
                tables.append(tbi)
                tables.append(tbr)
            if tab_name == 'empty':
                tab_name = tbn
    #print (array)
    return(array)

def fuc_char(fld):
    #print('i am varchar')
    tmp=''
    if(fld[1]=='.'):
        tmp=fld[3:]
    else:
        tmp=fld[1:]
    return r'varchar('+tmp+r')'
    
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
        1:lambda x:x+r' ',
        2:func_zdlx,
        0:lambda x:r', /* ' +x +r'  */',
        3:lambda x:' ' if (x.find('PK') == -1) else r' not null ' ,
        4:lambda x:r' /* ' +x +r'  */'
    }
    with open(file_w,'w+',encoding='utf-8') as ftb:
        for k,v in dd.items():
        #print(k,v)
            ftb.write(r'create table '+k+' (\n')
            lend=len(v)
            str1=''
            #print(lend)
            str2=''
            indexArray=[]
            ctlArray=[]
            for index,x in enumerate(v) :
                if index == lend-1: #结尾
                    str1 += switch_fld.get(4,'error')(x)
                    ftb.write(str1+'\n'+r');'+'\n\n')
                    if(str1.find('not') != -1) :
                        indexArray.append(str2)
                else:
                    str1 += switch_fld.get((index+1)%4,'0')(x)
                    if ( (index+1)%4 ==1 ) :
                        str2=str1
                        ctlArray.append(x)
                    if (index+1)%4 == 0 :
                        ftb.write(str1+'\n')
                        if(str1.find('not') != -1) :
                            indexArray.append(str2)
                        str1=''
            #create index   
            if indexArray :
                str2 = 'create index '+k+'_idx0'+' on '+k+r'('
                for value in indexArray :
                    if len(indexArray) == indexArray.index(value) + 1 :
                        str2 += value
                    else :
                        str2 += value+','
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
            file_tbl = file_dir+k+r'.ctl'
            with open(file_tbl,'w',encoding='utf-8') as ftbl :
                ftbl.write('load data\n')
                ftbl.write('Characterset UTF8\n')
                ftbl.write('infile'+'\'C004H101110102001-'+k+'-20190930.txt\'\n')
                ftbl.write('append into table '+k+'\n')
                ftbl.write('fields terminated by '+'\'^A\''+'\n')
                ftbl.write('trailing nullcols\n')
                ftbl.write('(\n')
                for n,i in enumerate(ctlArray) :
                    if n == len(ctlArray)-1 :
                        ftbl.write(i+'\n')
                    else :
                        ftbl.write(i+',\n')
                ftbl.write(')\n')
                ctlArray=[]

if __name__ == '__main__':
    # 读取Excel
    tb_dict={}
    tb_dict=read_excel()
    #print(tb_dict)
    write_sql(**tb_dict)
