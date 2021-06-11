# AUL(MyDUL)工具
  从2005年开始，AUL (MyDUL)已经为全球不同国家及地区的众多客户恢复了数十TB计的Oracle数据，从损坏的Oracle 8, Oracle 8i, Oracle 9i, Oracle 10g, Oracle 11g，Oracle 12c, Oracle 18c, Oracle 19c及Oracle ASM上为客户快速恢复数据. AUL(MyDUL)可以脱离Oracle运行环境，直接从数据文件中读取记录，与官方工具Oracle DUL具有同等功效并且功能更加丰富。当你遇到下列极端情况，并且没有有效备份(客户有备份动作，备份不起作用的情况也遇到过)用来恢复数据时, AUL(MyDUL)是往往是你最后的机会. 一直坚持“拯救数据，帮助客户”的原则！在最新版本AUL 6中, 可以直接访问Oracle ASM来恢复数据，或从Oracle ASM中将数据文件拷贝出来。

1. 完全丢失系统表空间
2. 系统表空间有坏块
3. 表空间被删除，但数据文件还存在
4. 表被删除后，马上停止操作，空间未被重用
5. 表被清空(Truncate)后马上停止操作，空间未被重用
6. 一个表空间丢失了部份文件，或文件中有坏块，无法自我修复
7. 数据文件头部被勒索病毒破坏
8. Oracle ASM存贮损坏，或Oracle ASM磁盘损坏
9. 其他无法正常打开数据库或无法查询数据的情况

  AUL(MyDUL)并不提供免费服务，没有许可证的情况下最多允许同时打开10个数据文件，并且只能访问文件的前512MB内容，要支持更多的数据文件或更大的数据文件恢复，你必须获得许可证并在使用前进行注册。另外一个免费工具AUL for Oracle ASM (下载)可以将存放在Oracle ASM中的数据文件拷到文件系统， 在Oracle ASM损坏或磁盘不可用时，进行文件级的数据恢复，在AUL(MyDUL 6)中也集成了这个工具的所有功能，并且免费使用，最大支持2028块盘的Oracle ASM存贮。

# AUL(MyDUL)版本
V6.6 完善对12C CLOB类型的支持; 增加对头部损坏的数据文件的自动检测功能；支持在UNLOAD时指定目标表名，方便恢复SYS用户数据。

V8.1 完善对Disable Storage In Row的LOB类型处理，包括Lob Chunk大小的自动识别，增加对SecureFile LOB的完全支持。增加缺失System表空间时表结构的自动匹配功能，大大降底数据恢复难度。

# AUL(MyDUL)支持
  邮件：<span>any</span><span>sql</span>(@)126.com, <span>any</span><span>sql</span>(@)yahoo.com, <span>any</span><span>sql</span>(@)live.com

  微信：<span>any</span><span>sql</span>

  手机：<span>159</span>&nbsp;<span>256</span>&nbsp;<span>11590</span>
