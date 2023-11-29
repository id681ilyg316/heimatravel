## 本项目实现的最终作用是基于JSP实现的一个在线旅游旅行综合服务平台
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 修改密码
 - 友情链接管理
 - 旅游景点管理
 - 旅游线路管理
 - 注册会员管理
 - 留言管理
 - 管理员登录
 - 管理员账号管理
 - 线路订单管理
 - 酒店信息管理
### 第2个角色为用户角色，实现了如下功能：
 - 在线留言
 - 查看推荐酒店
 - 查看旅游攻略
 - 查看景点展示
 - 查看景点详情
 - 查看站内新闻
 - 查看系统简介
 - 查看线路推荐
 - 查看路线导航
 - 查看首页
 - 用户注册
## 数据库设计如下：
# 数据库设计文档

**数据库名：** zxtravelsite

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [allusers](#allusers) |  |
| [dx](#dx) |  |
| [jiudianxinxi](#jiudianxinxi) |  |
| [liuyanban](#liuyanban) |  |
| [lvyoujingdian](#lvyoujingdian) |  |
| [lvyouxianlu](#lvyouxianlu) |  |
| [pinglun](#pinglun) |  |
| [shoucangjilu](#shoucangjilu) |  |
| [xianludingdan](#xianludingdan) |  |
| [xinwentongzhi](#xinwentongzhi) |  |
| [yonghuzhuce](#yonghuzhuce) |  |
| [youqinglianjie](#youqinglianjie) |  |

**表名：** <a id="allusers">allusers</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  3   | pwd |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  4   | cx |   varchar   | 255 |   0    |    Y     |  N   |   '普通管理员'    |   |
|  5   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    | 插入时间  |

**表名：** <a id="dx">dx</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  3   | content |   mediumtext   | 16777215 |   0    |    Y     |  N   |   NULL    | 内容  |

**表名：** <a id="jiudianxinxi">jiudianxinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | bianhao |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  3   | mingcheng |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  4   | tupian |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  5   | xingji |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  6   | chengshi |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  7   | junjia |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  8   | jianjie |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  9   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    | 插入时间  |

**表名：** <a id="liuyanban">liuyanban</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | cheng |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  3   | xingbie |   varchar   | 2 |   0    |    Y     |  N   |   ''    |   |
|  4   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  5   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  6   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  7   | neirong |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    | 插入时间  |
|  9   | huifuneirong |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |

**表名：** <a id="lvyoujingdian">lvyoujingdian</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | jingdianbianhao |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  3   | jingdianmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  4   | jingdianzhutu |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  5   | suoshudiqu |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  6   | jingdianjieshao |   mediumtext   | 16777215 |   0    |    Y     |  N   |   NULL    |   |
|  7   | menpiaojiage |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  8   | kaifangshijian |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  9   | issh |   varchar   | 2 |   0    |    Y     |  N   |   '否'    |   |
|  10   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    | 插入时间  |

**表名：** <a id="lvyouxianlu">lvyouxianlu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xianlubianhao |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  3   | jingdianmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  4   | chufashijian |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  5   | xianlumingcheng |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  6   | chufadi |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  7   | xianlujianjie |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  8   | faburen |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  9   | issh |   varchar   | 2 |   0    |    Y     |  N   |   '否'    |   |
|  10   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    | 插入时间  |

**表名：** <a id="pinglun">pinglun</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xinwenID |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  3   | pinglunneirong |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  4   | pinglunren |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  5   | pingfen |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  6   | biao |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  7   | jdmc |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    | 插入时间  |

**表名：** <a id="shoucangjilu">shoucangjilu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  3   | xwid |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  4   | ziduan |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  5   | biao |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  6   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    | 插入时间  |

**表名：** <a id="xianludingdan">xianludingdan</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xianlubianhao |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  3   | xianlumingcheng |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  4   | jingdianmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  5   | chufashijian |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  6   | chufadi |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  7   | faburen |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  8   | xianlubaojia |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  9   | fujiashuoming |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  10   | iszf |   varchar   | 2 |   0    |    Y     |  N   |   '否'    |   |
|  11   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    | 插入时间  |

**表名：** <a id="xinwentongzhi">xinwentongzhi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | biaoti |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  3   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  4   | neirong |   mediumtext   | 16777215 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | tianjiaren |   varchar   | 255 |   0    |    Y     |  N   |   'hsg'    |   |
|  6   | shouyetupian |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  7   | dianjilv |   int   | 10 |   0    |    Y     |  N   |   0    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    | 插入时间  |

**表名：** <a id="yonghuzhuce">yonghuzhuce</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yonghuming |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  5   | xingbie |   varchar   | 2 |   0    |    Y     |  N   |   ''    |   |
|  6   | chushengnianyue |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  7   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  8   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  9   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  10   | shenfenzheng |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  11   | touxiang |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  12   | dizhi |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  13   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  14   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    | 插入时间  |
|  15   | issh |   varchar   | 2 |   0    |    Y     |  N   |   '否'    |   |

**表名：** <a id="youqinglianjie">youqinglianjie</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | wangzhanmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  3   | wangzhi |   varchar   | 255 |   0    |    Y     |  N   |   ''    |   |
|  4   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    | 插入时间  |

**运行不出来可以微信 javape 我的公众号：源码码头**
