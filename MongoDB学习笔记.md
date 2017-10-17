>NoSQL(NoSQL = Not Only SQL)，意即"不仅仅是SQL".

## MongoDB简介和安装

MongoDB 是由C++语言编写的，是一个基于分布式文件存储的开源数据库系统。

MongoDB 将数据存储为一个文档，数据结构由键值(key=>value)对组成。

MongoDB 文档类似于 JSON 对象。字段值可以包含其他文档，数组及文档数组。

### MongoDB特点

- MongoDB的提供了一个面向文档存储，操作起来比较简单和容易。

- 你可以在MongoDB记录中设置任何属性的索引 (如：FirstName="Sameer",Address="8 Gandhi Road")来实现更快的排序。

- 你可以通过本地或者网络创建数据镜像，这使得MongoDB有更强的扩展性。

- 如果负载的增加（需要更多的存储空间和更强的处理能力） ，它可以分布在计算机网络中的其他节点上这就是所谓的分片。

- Mongo支持丰富的查询表达式。查询指令使用JSON形式的标记，可轻易查询文档中内嵌的对象及数组。

- MongoDb 使用update()命令可以实现替换完成的文档（数据）或者一些指定的数据字段 。

- Mongodb中的Map/reduce主要是用来对数据进行批量处理和聚合操作。
Map和Reduce。Map函数调用emit(key,value)遍历集合中所有的记录，将key与value传给Reduce函数进行处理。

- Map函数和Reduce函数是使用Javascript编写的，并可以通过db.runCommand或mapreduce命令来执行MapReduce操作。

- GridFS是MongoDB中的一个内置功能，可以用于存放大量小文件。

- MongoDB允许在服务端执行脚本，可以用Javascript编写某个函数，直接在服务端执行，也可以把函数的定义存储在服务端，下次直接调用即可。

- MongoDB支持各种编程语言:RUBY，PYTHON，JAVA，C++，PHP，C#等多种语言。

- MongoDB安装简单。

### MongoDB下载
>下载地址：[https://www.mongodb.com/download-center#community](https://www.mongodb.com/download-center#community)

>最新版不支持32位系统和Windows xp系统

### 安装

#### Windows安装
Windows 直接双击安装，默认是安装在C盘，可以点击`Custom`进行修改。

MongoDB将数据目录存储在`db`目录下，但是这个数据目录不会主动创建，所以我们在安装完成后需要创建它

>请注意，数据目录应该放在根目录下(C:\ 或者 D:\)。例如默认安装在C盘的，就要在`C:\`创建一个data的目录然后在`data`目录里创建`db`目录。

然后就在`MongoDB`目录的`bin`目录中执行`mongod.exe`文件
```
mongod --dbpath c:\data\db
```

>可以通过`CMD`命令窗口进入到`bin`目录然后执行命令

成功了会看到类似这样的信息：

![MongoDB start](http://ovv4v0gcw.bkt.clouddn.com/mongodbstart01.png)

可以通过打开`bin`目录下的`mongo.exe`运行MongoDB Shell，MongoDB自带的交互式`Javascript shell`,用来对MongoDB进行操作和管理的交互式环境。
当你进入mongoDB后台后，它默认会链接到 test 文档（数据库）

#### Linux平台安装

去官网下载安装包，然后解压并移动到要安装的目录下，如(/usr/local/mongodb),然后其他的就跟Windows类似，新建/data/db目录，然后进入mongodb的`bin`目录下运行。

```
#在var目录下新建/data/db
mkdir -p /var/data/db
#进入bin目录
cd /usr/local/mongodb/bin
#加上& 后台运行命令, 加上--dbpath指定数据库目录路径，然后就启动MongoDB
./mongod --dbpath /var/data/db &

#进入MongoDB后台Shell,bin目录下运行以下命令
./mongo
```

>可以把MongoDB的bin目录加入到PATH路径中。

>MongoDB 提供了简单的web界面，要想使用此功能，只需启动的时候加上 `--rest`,如`./mongod --dbpath /var/data/db/ --rest`

>web界面的端口比服务端口多`1000`，默认mongodb运行的端口为`27017`,所以默认的web界面端口为`28017`.访问地址为：`http://ip:28017`



## MongoDB使用

### MongoDB 概念解析

在mongodb中基本的概念是文档、集合、数据库。

![MongoDB 概念](http://ovv4v0gcw.bkt.clouddn.com/mongodbuse01.png)

#### 数据库
一个mongodb中可以建立多个数据库。

MongoDB的默认数据库为`db`，该数据库存储在data目录中。

MongoDB的单个实例可以容纳多个独立的数据库，每一个都有自己的集合和权限，不同的数据库也放置在不同的文件中。

`show dbs`命令可以显示所有数据的列表。

执行`db`命令可以显示当前数据库对象或集合。

运行`use`命令，可以连接到一个指定的数据库。

数据库也通过名字来标识。数据库名可以是满足以下条件的任意`UTF-8`字符串。
- 不能是空字符串（"")。
- 不得含有' '（空格)、.、$、/、\和\0 (空字符)。
- 应全部小写。
- 最多64字节。
有一些数据库名是保留的，可以直接访问这些有特殊作用的数据库。
- admin： 从权限的角度来看，这是"root"数据库。要是将一个用户添加到这个数据库，这个用户自动继承所有数据库的权限。一些特定的服务器端命令也只能从这个数据库运行，比如列出所有的数据库或者关闭服务器。
- local: 这个数据永远不会被复制，可以用来存储限于本地单台服务器的任意集合
- config: 当Mongo用于分片设置时，config数据库在内部使用，用于保存分片的相关信息。


#### 文档

文档是一组键值(key-value)对(即BSON)。MongoDB 的文档不需要设置相同的字段，并且相同的字段不需要相同的数据类型，这与关系型数据库有很大的区别，也是 MongoDB 非常突出的特点。

简单的文档例子：
```
{'site':'www.baidu.com','name':'百度'}
```

需要注意的是：

1. 文档中的键/值对是有序的。
2. 文档中的值不仅可以是在双引号里面的字符串，还可以是其他几种数据类型（甚至可以是整个嵌入的文档)。
3. MongoDB区分类型和大小写。
4. MongoDB的文档不能有重复的键。
5. 文档的键是字符串。除了少数例外情况，键可以使用任意UTF-8字符。

文档键命名规范：

1. 键不能含有`\0`(空字符)。这个字符用来表示键的结尾。
2. `.`和`$`有特别的意义，只有在特定环境下才能使用。
3. 以下划线`_`开头的键是保留的(不是严格要求的)。

#### 集合

集合就是 MongoDB 文档组，类似于 RDBMS （关系数据库管理系统：Relational Database Management System)中的表格。

集合存在于数据库中，集合没有固定的结构，这意味着你在对集合可以插入不同格式和类型的数据，但通常情况下我们插入集合的数据都会有一定的关联性。

比如，我们可以将以下不同数据结构的文档插入到集合中：

```
{"site":"www.baidu.com"}
{"site":"www.google.com","name":"Google"}
```
当第一个文档插入时，集合就会被创建。

##### 合法的集合名
- 集合名不能是空字符串`""`。

- 集合名不能含有`\0`字符（空字符)，这个字符表示集合名的结尾。

- 集合名不能以`system.`开头，这是为系统集合保留的前缀。

- 用户创建的集合名字不能含有保留字符。有些驱动程序的确支持在集合名里面包含，这是因为某些系统生成的集合中包含该字符。除非你要访问这种系统创建的集合，否则千万不要在名字里出现`$`。


##### capped collections

`Capped collections`就是固定大小的`collection`。

它有很高的性能以及队列过期的特性(过期按照插入的顺序). 有点和 "RRD" 概念类似。

`Capped collections`是高性能自动的维护对象的插入顺序。它非常适合类似记录日志的功能 和标准的`collection`不同，你必须要显式的创建一个`capped collection`， 指定一个`collection`的大小，单位是字节。`collection`的数据存储空间值提前分配的。
要注意的是指定的存储大小包含了数据库的头信息。
```
db.createCollection("mycoll", {capped:true, size:100000})
```

- 在capped collection中，你能添加新的对象。

- 能进行更新，然而，对象不会增加存储空间。如果增加，更新就会失败 。

- 数据库不允许进行删除。使用drop()方法删除collection所有的行。

- 注意: 删除之后，你必须显式的重新创建这个collection。

- 在32bit机器中，capped collection最大存储为1e9( 1X109)个字节。

##### 元数据

数据库的信息是存储在集合中。它们使用了系统的命名空间：
```
dbname.system.*
```

在MongoDB数据库中名字空间 `<dbname>.system.*`是包含多种系统信息的特殊集合(Collection)，如下:

![集合](http://ovv4v0gcw.bkt.clouddn.com/mongodbcoll01.png)

对于修改系统集合中的对象有如下限制。

在`{{system.indexes}}`插入数据，可以创建索引。但除此之外该表信息是不可变的(特殊的drop index命令将自动更新相关信息)。

`{{system.users}}`是可修改的。`{{system.profile}}`是可删除的。


##### MongoDB 数据类型

![MongoDB 数据类型](http://ovv4v0gcw.bkt.clouddn.com/mongodbtype01.png)

#### MongoDB 连接

MongoDB shell 来连接 MongoDB 服务器

标准 URI 连接语法

```
mongodb://[username:password@]host1[:port1][,host2[:port2],...[,hostN[:portN]]][/[database][?options]]
```

- mongodb:// 这是固定的格式，必须要指定。

- username:password@ 可选项，如果设置，在连接数据库服务器之后，驱动都会尝试登陆这个数据库

- host1 必须的指定至少一个host, host1 是这个URI唯一要填写的。它指定了要连接服务器的地址。如果要连接复制集，请指定多个主机地址。

- portX 可选的指定端口，如果不填，默认为27017

- /database 如果指定username:password@，连接并验证登陆指定数据库。若不指定，默认打开 test 数据库。

- ?options 是连接选项。如果不使用/database，则前面需要加上/。所有连接选项都是键值对name=value，键值对之间通过&或;（分号）隔开

标准的连接格式包含了多个选项(options)，如下所示：

![options](http://ovv4v0gcw.bkt.clouddn.com/mongodboption01.png)

实例：

连接本地数据库服务器，端口是默认的。
```
mongodb://localhost
```
使用用户名fred，密码foobar登录localhost的admin数据库。
```
mongodb://fred:foobar@localhost
```
使用用户名fred，密码foobar登录localhost的baz数据库。
```
mongodb://fred:foobar@localhost/baz
```
连接 replica pair, 服务器1为example1.com服务器2为example2。
```
mongodb://example1.com:27017,example2.com:27017
```
连接 replica set 三台服务器 (端口 27017, 27018, 和27019):
```
mongodb://localhost,localhost:27018,localhost:27019
```
连接 replica set 三台服务器, 写入操作应用在主服务器 并且分布查询到从服务器。
```
mongodb://host1,host2,host3/?slaveOk=true
```
直接连接第一个服务器，无论是replica set一部分或者主服务器或者从服务器。
```
mongodb://host1,host2,host3/?connect=direct;slaveOk=true
```
当你的连接服务器有优先级，还需要列出所有服务器，你可以使用上述连接方式。

安全模式连接到localhost:
```
mongodb://localhost/?safe=true
```
以安全模式连接到replica set，并且等待至少两个复制服务器成功写入，超时时间设置为2秒。
```
mongodb://host1,host2,host3/?safe=true;w=2;wtimeoutMS=2000
```


#### MongoDB 创建数据库

MongoDB 创建数据库的语法格式

```
use DATABASE_NAME
```

>如果数据库不存在，则创建数据库，否则切换到指定数据库。

然后可以通过`db`和`show dbs`查看

>刚创建的数据库不会显示在数据库列表中的，需要在新建的数据库中添加一些数据才可以显示。


#### MongoDB 删除数据库

MongoDB 删除数据库的语法格式

```
db.dropDatabase()
```

>删除当前数据库，默认为 test，你可以使用 db 命令查看当前数据库名。

实例：

![删除数据库](http://ovv4v0gcw.bkt.clouddn.com/mongodbremove01.png)


删除集合

集合删除语法格式

```
db.collection.drop()
```
实例：

![删除集合](http://ovv4v0gcw.bkt.clouddn.com/mongodbremove02.png)

>实例中是删除test集合


### MongoDB 文档操作

MongoDB文档的数据结构和JSON基本一样。所有存储在集合中的数据都是BSON格式。

BSON是一种类json的一种二进制形式的存储格式,简称Binary JSON。

#### MongoDB 插入文档

MongoDB 使用 insert() 或 save() 方法向集合中插入文档

```
db.COLLECTION_NAME.insert(document)
```
>`COLLECTION_NAME`为集合名，如果没有这个集合会自动创建。
>我们可以把数据定义为一个变量，然后再插入。

实例：

![插入文档](http://ovv4v0gcw.bkt.clouddn.com/mongodbinsert01.png)

>实例中把数据定义到`document`中，然后再添加。
>
>可以通过`db.COLLECTION_NAME.find()`查看数据。
>
>插入文档你也可以使用`db.COLLECTION_NAME.save(document)`命令。如果不指定 `_id`字段`save()`方法类似于`insert()`方法。如果指定`_id`字段，则会更新该`_id`的数据。

3.2 版本后还有以下几种语法可用于插入文档:

- db.collection.insertOne():向指定集合中插入一条文档数据

- db.collection.insertMany():向指定集合中插入多条文档数据

#### MongoDB 更新文档

update()方法用于更新已存在的文档。语法格式

```
db.collection.update(
   <query>,
   <update>,
   {
     upsert: <boolean>,
     multi: <boolean>,
     writeConcern: <document>
   }
)
```

参数说明：

- query : update的查询条件，类似sql update查询内where后面的。

- update : update的对象和一些更新的操作符（如$,$inc...）等，也可以理解为sql update查询内set后面的

- upsert : 可选，这个参数的意思是，如果不存在update的记录，是否插入objNew,true为插入，默认是false，不插入。

- multi : 可选，mongodb 默认是false,只更新找到的第一条记录，如果这个参数为true,就把按条件查出来多条记录全部更新。

- writeConcern :可选，抛出异常的级别。

实例：

![更新数据](http://ovv4v0gcw.bkt.clouddn.com/mongodbupdate01.png)

>实例中只修改匹配的第一条记录，如果要修改多条的，需要设置`mulit`参数为`true`

```
db.coltest.update({title:'Baidu'},{$set:{title:'百度'}},{mulit:true})
```

只更新第一条记录：
```
db.col.update( { "count" : { $gt : 1 } } , { $set : { "test2" : "OK"} } );
```
全部更新：
```
db.col.update( { "count" : { $gt : 3 } } , { $set : { "test2" : "OK"} },false,true );
```
只添加第一条：
```
db.col.update( { "count" : { $gt : 4 } } , { $set : { "test5" : "OK"} },true,false );
```
全部添加加进去:
```
db.col.update( { "count" : { $gt : 5 } } , { $set : { "test5" : "OK"} },true,true );
```
全部更新：
```
db.col.update( { "count" : { $gt : 15 } } , { $inc : { "count" : 1} },false,true );
```
只更新第一条记录：
```
db.col.update( { "count" : { $gt : 10 } } , { $inc : { "count" : 1} },false,false );
```
>在3.2版本开始，MongoDB提供以下更新集合文档的方法：
>
>db.collection.updateOne() 向指定集合更新单个文档
>
>db.collection.updateMany() 向指定集合更新多个文档


save() 方法

save() 方法通过传入的文档来替换已有文档。语法格式

```
db.collection.save(
   <document>,
   {
     writeConcern: <document>
   }
)
```

参数说明：

- document : 文档数据。

- writeConcern :可选，抛出异常的级别。

#### MongoDB 删除文档

MongoDB remove()函数是用来移除集合中的数据。

remove() 方法的基本语法格式

```
db.collection.remove(
   <query>,
   <justOne>
)
```

2.6版本以后的，语法格式如下：
```
db.collection.remove(
   <query>,
   {
     justOne: <boolean>,
     writeConcern: <document>
   }
)
```
参数说明：
- query :（可选）删除的文档的条件。

- justOne : （可选）如果设为 true 或 1，则只删除一个文档。

- writeConcern :（可选）抛出异常的级别。

>执行remove()函数前先执行find()命令来判断执行的条件是否正确，这是一个比较好的习惯。

删除title为Google的记录

```
db.coltest.remove({title:'Google'})
```

如果你只想删除第一条找到的记录可以设置 justOne 为 1
```
db.coltest.remove({'title':'Google'},1)
```

如果你想删除所有数据，可以使用以下方式（类似常规 SQL 的 truncate 命令）

```
db.col.remove({})
```

#### MongoDB 查询文档

MongoDB 查询文档使用 find() 方法。

find() 方法以非结构化的方式来显示所有文档。

MongoDB 查询数据的语法格式如下
```
db.collection.find(query, projection)
```
参数说明：

- query ：可选，使用查询操作符指定查询条件

- projection ：可选，使用投影操作符指定返回的键。查询时返回文档中所有键值， 只需省略该参数即可（默认省略）。

如果你需要以易读的方式来读取数据，可以使用`pretty()`方法
```
db.collection.find().pretty()
```

>pretty() 方法以格式化的方式来显示所有文档。
>
>除了 find() 方法之外，还有一个 findOne() 方法，它只返回一个文档。

MongoDB 与 RDBMS Where 语句比较

![查询比较](http://ovv4v0gcw.bkt.clouddn.com/mongodbsel01.png)

MongoDB AND条件

MongoDB的`find()`方法可以传入多个键(key)，每个键(key)以逗号隔开，及常规SQL的AND条件。

语法格式如下：
```
db.col.find({key1:value1, key2:value2}).pretty()
```
实例

![and查询](http://ovv4v0gcw.bkt.clouddn.com/mongodbsel02.png)

>实例中类似sql中的where语句： where URL='www.baidu.com' and title = 'Baidu'

MongoDB OR条件

MongoDB OR条件语句使用了关键字`$or`,语法格式
```
db.col.find(
   {
      $or: [
         {key1: value1}, {key2:value2}
      ]
   }
).pretty()
```

实例

![or查询](http://ovv4v0gcw.bkt.clouddn.com/mongodbsel03.png)

#### MongoDB 条件操作符

条件操作符用于比较两个表达式并从mongoDB集合中获取数据。

MongoDB中条件操作符有：

- (>) 大于 - $gt
- (<) 小于 - $lt
- (>=) 大于等于 - $gte
- (<= ) 小于等于 - $lte

例子

使用$gte查询
```
db.col.find({likes : {$gte : 100}})
```
类似于SQL中的
```
Select * from col where likes >=100;
```

使用$lt和$gt查询

```
db.col.find({likes : {$lt :200, $gt : 100}})
```
类似于SQL中的
```
Select * from col where likes>100 AND  likes<200;
```
>其他的条件操作符同理

#### MongoDB $type 操作符

`$type`操作符是基于BSON类型来检索集合中匹配的数据类型，并返回结果。

MongoDB 中可以使用的类型如下表所示

![MongoDB 中可以使用的类型](http://ovv4v0gcw.bkt.clouddn.com/mongodbtype02.png)

MongoDB 操作符`-$type`用法

获取`coltest`集合中`title`为`String`的数据

```
db.coltest.find({title:{$type:2}})
```

