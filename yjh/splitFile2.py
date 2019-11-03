# !/usr/bin/env python
# encoding: utf-8
import pickle
import argparse
'''
# 2按$2读入文件名，分析出结构名
# 3读入utf-8文件，逐条核对，按$列表生成文件
'''


def main():
    parser = argparse.ArgumentParser(description='manual to this script')
    parser.add_argument("-D", type = str, 
        default='/app/ods/file/input/yinjianhui/')
    #parser.add_argument('-i',  nargs='+', type=argparse.FileType('r') )
    parser.add_argument('-i',  nargs='+', type=str )
    parser.add_argument('-f', nargs='+')
    parser.add_argument('-o',  nargs='?')
    args = parser.parse_args('-i cre_tab.sql -f 1 2 -o xx'.split())
    # 1检查参数  cmd -f filename fieldList
    if args.o :
            print ('the destfile and dir is {} and {}'.format(args.i, args.f) )
    else :
            print ( "the infiel is %s"%args.i )

    dfile = open("dump_tab.txt", "rb")
    result = pickle.load(dfile)
    dfile.close()
    print(result, id(result))

if __name__ == '__main__' :
    main()
