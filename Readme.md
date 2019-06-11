聚合sdk打包
-----------
这是一个nodejs通用的聚合sdk打包工具.<br/>

实现原理：<br/>

1.反编绎渠道sdk（这个通常是已反编好的sdk）<br/>

2.反编绎游戏<br/>

3.进行一些预处理（比如：目录建立， 删除）<br/>

4.复制文件<br/>
   - 将sdk中的文件复制到游戏中但要保留一些文件比<br>
   AndroidManifest.xml values文件夹等文件<br>

5.合并xml<br>
   - public.xml <br>
   - 其它xml<br>

6.生成R$*.smail  这里手动生成.smail 没有利用appt以及smail工具<br>

7.回编<br>

8.签名<br>

9.清理<br>