'''
autotuner.py

功能：主程序，也是和用户交互的 interface
通过 Paser 类对用户的 command 进行解析，然后调用对应的参数搜索算法进行调优

优化过程包含两个超参数，一个是运行时的循环分块大小(blocksize)，一个是编译时的优化等级(optimization level)
对于这个问题来讲，可以在不同的优化等级下直接先将文件编译出来，每次只需调整循环分块大小，而不用多次编译文件

这里实现了两种参数搜索算法，一种是 grid search，另一种是 random search。
其实 random search 在这里有点不合时宜，因为参数的维度并不高，取值也不多，引入随机化算法得到最优解的概率相对较低。
'''

import itertools
import random
import time
from subprocess import PIPE, Popen, call

from parser import Parser


class AutoTuner:
    # 解析 command
    def __init__(self):
        argparser = Parser()
        self.paras = argparser.parse()
        self.paras["blk"] = self.paras["blk"].split(",")
        self.paras["opt"] = self.paras["opt"].split(",")
        self.paras["alg"] = self.paras["alg"].split(",")

        self.grid_search_time = None
        self.grid_best = None
        self.grid_run_time = None
        self.random_search_time = None
        self.random_run_time = None
        self.random_best = None

    # 在不同优化等级下编译
    def compile(self):
        for opt in self.paras["opt"]:
            compile_cmd = ["gcc", "-" + opt,
                           self.paras["file"], "-o", "test" + opt]  # 编译命令
            if call(compile_cmd):  # 编译
                raise Exception("{} compile error!".format(compile_cmd))
            # self.grid_search_size[opt] = os.path.getsize("test")   # 获取文件大小

    # grid search
    def grid_search(self):
        self.grid_search_time = {}  # 记录不同参数组合下，程序的运行时间
        # self.grid_search_size = {}  # 记录不同参数组合下，程序的大小
        grid_begin_time = time.time()  # grid search 算法开始时间
        repeat = 5  # 重复次数
        for blk in self.paras["blk"]:
            for opt in self.paras["opt"]:
                run_time = 0
                for _ in range(repeat):
                    p = Popen(["./test" + opt, str(blk)], stdout=PIPE)  # 带参数运行
                    run_time += float(str(p.communicate()[0])[2:-3])  # 获取运行时间
                self.grid_search_time[blk + "," +
                                      opt] = round(run_time / repeat, 4)  # 记录平均用时

        self.grid_best = min(self.grid_search_time.items(),
                             key=lambda x: x[1])  # 最优参数组合
        grid_end_time = time.time()  # grid search 算法结束时间
        self.grid_run_time = round(
            grid_end_time - grid_begin_time, 4)  # grid search 算法运行时间

        print("(grid search)execution time with different parameter combinations:\n",
              self.grid_search_time)
        print("(grid search)best parameter combination: ", self.grid_best[0],
              " (" + str(self.grid_best[1]), "s)")
        print("(grid search)algorithm run time:", self.grid_run_time, "s\n")

    # random search
    def random_search(self):
        self.random_search_time = {}  # 记录不同参数组合下，程序的运行时间
        iterations = 10  # 随机次数
        repeat = 5  # 重复次数

        # 计算所有参数组合
        paras_combinations = []
        for i in itertools.product(self.paras["opt"], self.paras["blk"]):
            paras_combinations.append(i)
        random_begin_time = time.time()  # random search 算法开始时间
        for iter in range(iterations):
            # 没有一个分布可以刻画参数，所以用均匀分布进行不放回的抽样
            paras_selected = random.choice(paras_combinations)  # 选一组参数
            paras_combinations.remove(paras_selected)  # 不放回
            opt_level = paras_selected[0]
            blocksize = paras_selected[1]

            run_time = 0
            for _ in range(repeat):  # 运行 5 次，取平均时间
                p = Popen(["./test" + opt_level, blocksize],
                          stdout=PIPE)  # 带参数运行
                run_time += float(str(p.communicate()[0])[2:-3])  # 获取运行时间
            self.random_search_time[blocksize + "," +
                                    opt_level] = round(run_time / repeat, 4)  # 记录平均用时

        self.random_best = min(self.random_search_time.items(),
                               key=lambda x: x[1])  # 最优参数组合
        random_end_time = time.time()  # grid search 算法结束时间
        self.random_run_time = round(
            random_end_time - random_begin_time, 4)  # random search 算法运行时间
        print("(random search)execution time with different parameter combinations:\n",
              self.random_search_time)
        print("(random search)best parameter combination: ", self.random_best[0],
              " (" + str(self.random_best[1]), "s)")
        print("(random search)algorithm run time:", self.random_run_time, "s\n")

    # 程序入口
    def run(self):
        self.compile()
        for alg in self.paras["alg"]:
            if alg == "grid":
                self.grid_search()
            elif alg == "random":
                random_begin_time = time.time()
                self.random_search()
                random_end_time = time.time()
                random_run_time = round(random_end_time - random_begin_time, 4)
        # 将结果写入到文件
        with open('result.txt', 'w', encoding='utf-8') as f:
            grid_result = "grid search result\n" + "all combinations: " + \
                          str(self.grid_search_time) + "\nbest parameter combination: " + \
                          str(self.grid_best[0]) + "\nbest time: " + \
                          str(self.grid_best[1]) + "\n"
            random_result = "random search result\n" + "all combinations: " + \
                            str(self.random_search_time) + "\nbest parameter combination: " + \
                            str(self.random_best[0]) + "\nbest time: " + \
                            str(self.random_best[1])
            f.write(grid_result + "\n" + random_result)


if __name__ == "__main__":
    autotuner = AutoTuner()
    autotuner.__init__()
    autotuner.run()

(grid search)execution time with different parameter combinations:
 {'8,o0': 334.6243, '8,o1': 336.3172, '8,o2': 341.7421, '8,o3': 303.8557, '16,o0': 262.7485, '16,o1': 261.5145, '16,o2': 261.5709, '16,o3': 261.5868, '32,o0': 245.7064, '32,o1': 245.3797, '32,o2': 245.4461, '32,o3': 245.7257, '64,o0': 241.1185, '64,o1': 241.0958, '64,o2': 241.5703, '64,o3': 241.0119, '128,o0': 243.3211, '128,o1': 241.7159, '128,o2': 242.1411, '128,o3': 243.6011}
(grid search)best parameter combination:  64,o3  (241.0119 s)
(grid search)algorithm run time: 26442.1503 s

(random search)execution time with different parameter combinations:
 {'128,o0': 243.3081, '8,o1': 306.3723, '16,o2': 264.7079, '128,o2': 242.2343, '16,o3': 262.6215, '16,o1': 261.4827, '8,o0': 301.1128, '64,o2': 240.9468, '64,o3': 241.5422, '32,o0': 245.4708}
(random search)best parameter combination:  64,o2  (240.9468 s)
(random search)algorithm run time: 13065.5711 s