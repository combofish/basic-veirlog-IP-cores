# basic-veirlog-IP-cores
Basic Verilog HDL IP Cores for FPGA programming.

# Catalogue

|文件名|作用|
|---|---|
|Bin8Bcd10| 8位二进制码转BCD码|
|Clk_100Mhz_100KHz| 100MHz 时钟转 100KHz|
|Clkdiv_25Mhz   | 100MHz 时钟转 25MHz|
|Clkdiv_100MHz_190Hz_48Hz_1Hz | 100MHz 时钟分频成 190Hz,48Hz,1Hz|
|Decode138| 38译码器|
|Four2InputNandGate| 4位2输入与非门|
|FrequencyDivider| 100MHz 时钟分频成 1KHz,100Hz,10Hz,1Hz|
|FullAdd1Bit | 1位全加器|
|Hz_Counter | 频率计数器,可统计频率范围 10Hz~10KHz|
|Key5Scan| 5个键盘扫描消抖程序|
|Keyboard| USB键盘接口模块|
|MultiDivider |对输入信号进行 8位可调分频|
|VGA_640x480| VGA 显示接口|
|x7seg | 4位数码管显示|
|x7seg2 | 2位数码管显示|
|x7segSim |4位数码管显示,用于仿真|

# Test
代码在Xilinx公司的 EGO1实验板卡上测试通过
