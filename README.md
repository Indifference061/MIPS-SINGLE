# MIPS-SINGLE
MIPS单周期处理器

## 实验内容：
- 根据课本中的代码，完成MIPS单周期处理器的设计，并用.dat文件进行仿真测试
- 增加ori、bne等指令，修改上述MIPS单周期处理器：
<br>  修改MIPS处理器原理图
<br>  修改主译码器(cf表7-3)、ALU译码器真值表
- 编写MIPS汇编测试代码，测试修改后的MIPS处理器 4.在NEXYS4 DDR板上实现两位正整数加法运算，如12+34=046。

## 实验方案：
1.基础部分：
	<br> &nbsp; 1)MIPS指令处理器可以分为程序计数器（计算PC值）、寄存器文件（读取指令中的rs、rt地址进行读写操作）、指令存储器（读取指令）、数据存储器（将计算结果进行存储）4个状态元件。不同的状态元件通过数据通路连接，并使用复用器，进行其他指令的数据拓展。
	<br> &nbsp; 2）MIPS指令处理器通过读入instr，并通过真值表进行对应的解析，进行过相应的操作，基础部分的主译码器真值表如下：
 
 <br>![图片](https://github.com/Indifference061/MIPS-SINGLE/assets/87850383/99588df3-2e70-48f7-954a-8abefa926782)

ALU译码器真值表：

<br>![图片](https://github.com/Indifference061/MIPS-SINGLE/assets/87850383/cb583c23-749d-4587-8c9a-4b1d98b49c9c)

分别使用主译码器和ALU译码器对instr对应位置指令进行译码，产生一个2位的信号aluop，与funct信号决定alucontrol的值，作为alu计算选择信号。
	<br> &nbsp; 3）基础部分处理器的原理图：
 
 <br>![图片](https://github.com/Indifference061/MIPS-SINGLE/assets/87850383/ae21ad81-41fa-4b70-8927-626d281f76ba)

<br>4）设计仿真文件对memfile.dat进行仿真测试。
<br>2.拓展指令：
<br> &nbsp; 1）需要增加ori、bne等指令，就需要在基础的部分，根据指令内容特性，增加数据通路或者复用器。
<br> &nbsp; 2）ori：增加复用器判断指令是否需要零拓展
