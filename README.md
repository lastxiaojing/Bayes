#贝叶斯模型

##贝叶斯公式
P(A|B)*P(B) = P(B|A)*P(A)
P(B|A) = P(A|B)*P(B) / P(A)

##全概率公式
P(A) = 求和公式P(A|Bi)*P(Bi) (1<=i<=n)

##训练过程
首先将数据打标签,正样本,负样本

打完标签,可以很容易计算出P(B)

P(B1) = 正样本/总样本

P(B0) = 负样本/总样本

P(A|Bi) 根据P(Ai)的数量/sum(P(B0)) 和 P(Ai)的数量/sum(P(B1))来计算

因为最后是比较P(B|A)的大小,P(A)可以约分约掉,不计算也可以,反而计算会影响准确性

##举例
假设上午1-12点 下午1-12点

假设某一时间发生在上午为正样本事件,记作1	发生在下午为负样本事件,记作0

现在知道每个时间点发生事件的个数

现在知道某一个事件发生的时间点,但忘了是上午还是下午,根据这个推测在上午和下午的可能性

有点不恰当的例子,只是为了简单的说明问题


首先对数据进行标注,这些数据都是我们可以获得的

标注完之后得到文件file的数据


然后统计sum(0)和sum(1)的数量,这里已经统计出来了,均为100

用B0和B1表示正样本和负样本事件

用Ai(1<=i<=12)表示发生在时间点

可以得到

P(B0) = sum(B0) / Sum(B0+B1)

P(B1) = sum(B1) / Sum(B0+B1)

P(Ai|B0) = 发生在i时间点的时间数 / Sum(B0)

P(Ai|B1) = 发生在i时间点的时间数 / Sum(B1)


P(B0 | Ai) = P(Ai | B0) * P(B0) / P(A)

P(B1 | Ai) = P(Ai | B1) * P(B1) / P(A)

P(A)都相同,可以不去计算,最后比较大小就可以了
