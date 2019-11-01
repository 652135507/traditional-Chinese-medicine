#!/usr/bin/env python
# encoding: utf-8
import pickle
import argparse
'''
# 1检查参数  cmd filename fieldList
# 2按$2读入文件名，分析出结构名
# 3读入utf-8文件，逐条核对，按$列表生成文件
'''

def main() :
    import argparse
    parser = argparse.ArgumentParser(description='manual to this script')
    parser.add_argument('--gpus', type=str, default=None)
    parser.add_argument('--batch-size', type=int, default=32)
    args = parser.parse_args()
    print args.gpus
    print args.batch_size

    parser = argparse.ArgumentParser()
    parser.add_argument("square", type=int,
                        help="display a square of a given number")
    parser.add_argument("-v", "--verbosity", type=int, choices=[0, 1, 2],
                        help="increase output verbosity")
    args = parser.parse_args()
    answer = args.square**2
    if args.verbosity == 2:
            print "the square of {} equals {}".format(args.square, answer)
    elif args.verbosity == 1:
            print "{}^2 == {}".format(args.square, answer)
    else:
            print answer
    
    dfile = open("dump_tab.txt", "rb")
    result = pickle.load(dfile)
    dfile.close()
    print(result, id(result))

if __name__ == '__main__' :
    main()
