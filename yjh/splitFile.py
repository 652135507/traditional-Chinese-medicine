# !/usr/bin/env python
# -*- coding: utf-8 -*-
import pickle
# 1检查参数  cmd filename fieldList
# 2按$2读入文件名，分析出结构名
# 3读入utf-8文件，逐条核对，按$列表生成文件

import getopt
import sys

class GetoptTest:
    def __init__(self, argv):
        try:
            # 第一个参数argv----传过来的要解析的参数数组。形如['-n', 'ls', '-p', 'programmer']
            # 第二个参数"hn:p:"----用于向getopt注册短格式。没有：表示该参数不带值，有：表示下一参数为该参数的值
            # 第三个参数[]----用于向getopt注册长格式。没有=表示该参数不带值，有=表示=号后边为其值（如果没有=号就以下一个参数为其值）
            # 第三个参数[]----[]不是可选的意思，这里是代码，[]表示该参数是个数组
            # opts----以元组形式存放解析出的参数。形如[('-n', 'ls'), ('-p', 'programmer'), ('-h', '')]
            # args----以数组形式存放按所有注册的格式未能解析参数
            opts, args = getopt.getopt(
                argv, "hn:p:", ["help", "name=", "profession="])
            print(f"parsed argv: opts----{opts} args----{args}")
        except getopt.GetoptError:
            # 参数不符合注册格式要求报错
            print("parameter format error")
            self.usage()
            sys.exit(2)

        user_name = ""
        user_profession = ""
        # 遍历所有元组
        # getopt只会严格按照注册的格式解析参数，而不理解哪个短格式与哪个长格式等价，等价是我们这里设定短格式和长格式用同一响应造成的
        # 也就是说getopt并不理解-n和--name等价，他有-n就解析-n有--name就解析--name，两个都有就两个都解析。-n和--name等价是因为我们对这两个参数用同样的代码进行处理。
        # 比如执行python getopt_test.py -n ls --name=root，解析出的就是[('-n', 'ls'), ('--name', 'root')]
        for opt, arg in opts:
            # -h与--help等价
            if opt in ("-h", "--help"):
                self.usage()
                sys.exit()
            # -n与--name等价
            elif opt in ("-n", "--name"):
                user_name = arg
            # -p与--profession等价
            elif opt in ("-p", "--profession"):
                user_profession = arg
        print(f"you are {user_profession} {user_name}!")

    def usage(self):
        print("getopt_test version 1.0")
        print("-h   print this message")
        print("-n   <your name>     equ --name")
        print("-p   <your profession>   equ --profession")

def main() :
    # 系统参数可通过sys.argv[index]来获取，sys.argv[0]是本身文件名
    argv = sys.argv[1:]
    print(f"will parse argv: {argv}")
    # sys.argv[index]武断地以空格来划分参数，并不能区分选项和选项值
    # sys.argv[index]不能乱序，取第一个参数为用户名，就必须在第一个参数输入用户名，不能在第二或别的地方输
    # 我们使用getopt模块来解决这两个问题
    para_test_obj = GetoptTest(argv)
    dfile = open("dump_tab.txt", "rb")
    result = pickle.load(dfile)
    dfile.close()
    print(result, id(result))
    import argparse
    parser = argparse.ArgumentParser(description='manual to this script')
    parser.add_argument('--gpus', type=str, default=None)
    parser.add_argument('--batch-size', type=int, default=32)
    args = parser.parse_args()
    print args.gpus
    print args.batch_size

if __name__ == '__main__' :
    main()
