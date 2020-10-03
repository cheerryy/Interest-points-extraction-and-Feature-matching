# Interest points extraction and Feature matching

##### 1 实验目的

提取两张相同物体但不同角度的图片的关键点，并匹配特征点



##### 2 运行方法

###### 2.1 安装vlfeat库

1. 下载VLFeat的安装包在其解压到任意目录下
2. 在matlab中新建startup.m文件
3. 在startup.m文件中输入run('...\vlfeat-0.9.18\toolbox\vl_setup')并运行，即可安装
4. 可在matlab中输入vl_version ，得到vlfeat的版本号以检验是否安装成功

###### 2.2 运行m文件

将图片放到matlab运行路径中，运行project2.m文件即可



##### 3 工作原理

利用Harris算法进行关键点提取，并利用SIFT算法描述关键点特征，最后利用欧氏距离作为相似度的度量进行特征匹配。

详见project2-report.pdf文档



##### 4 实验结果

特征点检测结果：

![image](https://github.com/cheerryy/Interest-points-extraction-and-Feature-matching/blob/main/Images/1.png)

特征点匹配结果：

![image](https://github.com/cheerryy/Interest-points-extraction-and-Feature-matching/blob/main/Images/2.png)
