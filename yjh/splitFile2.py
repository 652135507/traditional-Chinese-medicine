# !/usr/bin/env python
# encoding: utf-8
import pickle
import argparse
import codecs
'''

'''
fd_delimter = '\01'

def main():
    parser = argparse.ArgumentParser(description='manual to this script')
    parser.add_argument("-D", type = str, 
        default='/app/ods/file/input/yinjianhui/')
    #parser.add_argument('-i',  nargs='+', type=argparse.FileType('r') )
    parser.add_argument('-i',  nargs='+', type=str )
    parser.add_argument('-f', nargs='+')
    parser.add_argument('-o',  nargs='?')
    args = parser.parse_args('-i C004H101110102001-CZXX-20191031.txt -f NBJGH cjrq -o xx'.split())
    # 1 检查参数  cmd -f filename fieldList
    if args.o :
            print  'the destfile and dir is {} and {}'.format(args.i, args.f)  
    else :
            print  "the infiel is %s"%args.i
    tab_name = args.i[0].split('-')
    #print tab_name

    # 2按$2读入文件名，分析出结构名
    dfile = open("dump_tab.txt", "rb")
    result = pickle.load(dfile)
    dfile.close()
    #print(result, id(result))
    array={}
    for key, value in result.items():
        if key != tab_name[1] :
            continue
        array_fld=[]
        for index, fld in enumerate(value):
            if index % 4 == 0 :
                array_fld.append( fld.upper() )
            else :
                continue
        array[key] = array_fld
    #print(array)
    fldArray=[]
    for i in range(len(args.f)) :
        fldArray.append(list(array.values())[0].index(args.f[i].upper()))
        #print  list(array.values())[0].index(args.f[i].upper())
    #print fldArray

    # 3读入utf-8文件，逐条核对，按$列表生成文件
    filename = args.i[0]
    with codecs.open(filename, mode='r', encoding='utf-8') as fin, codecs.open(filename+'_out', mode='w', encoding='utf-8') as fout:
        for line in fin:
            listLine = line.split(fd_delimter)
            print listLine
            fld_w = []
            for i in fldArray :
                fld_w.append( listLine[int(i)-1] )
                fout.write( listLine[int(i)-1] )
            print fld_w
            fout.write('\n')

    return 0


if __name__ == '__main__' :
    main()
