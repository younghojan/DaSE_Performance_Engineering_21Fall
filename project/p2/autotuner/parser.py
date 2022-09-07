'''
parser.py

功能：解析 command

由作业要求可知，command 包含三个信息：
（1）输入的目标程序；
（2）输入的配置参数值组合；
（3）输入的参数值搜索算法。

parser.py 将 command 解析为不同的部分，并且返回给调用程序。

允许用户输入如下的参数：
--file: filename - 输入的目标程序
--blk: parameter - 输入的参数值组合
--opt optimization - 输入的优化等级组合
--alg: algorithm - 输入的参数值搜索算法
'''

import argparse


class Parser:
    def __init__(self):
        self.parser = argparse.ArgumentParser(
            description="Input your filename, blocksize combinations, optimazation level combinations and search algorithm.")
        self.parser.add_argument("--file", type=str, help="specify your file")
        self.parser.add_argument("--blk", type=str, default="32",
                                 help="specify blocksize combinations")
        self.parser.add_argument("--opt", type=str, default="O0",
                                 help="specify optimazation level combinations")
        self.parser.add_argument("--alg", type=str, default="grid",
                                 help="specify your search algorithm")

    def parse(self):
        return vars(self.parser.parse_args())
