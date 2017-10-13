>环境：Python3.5+django1.10


## Django传递JSON到JavaScript中

当使用Django时需要把列表或者字典的内容发送到前端的JavaScript中的时候。默认的传递会把内容转义，所以要先把内容转为JSON然后再发送到前端中。

### Django中把字典转为JSON
所以要先在python中引入json库，然后通过`json.dumps()`先转义。
```
from django.shortcuts import render
import json
def index(request):
	country = {'中国':1,'美国':2,'英国':3}
    return render(request, 'index.html', {
            'country': json.dumps(country)
        })
```
### JavaScript获取Django传递过来的JSON
在前端的页面中的JavaScript中使用。
```
var country = {{country|safe}}
```

>这里要注意一下，在Django中视图函数中记得要用`json.dumps()`处理
>在前端使用的时候要加上`safe过滤器`
>当JSON格式有问题页面会出现`Uncaught SyntaxError: Unexpected token ILLEGAL`这个错误。

#### JavaScript遍历列表和字典的方法
在js中遍历列表可以这样
```
    for (var i = List.length - 1; i >= 0; i--) {
        // 鼠标右键，审核元素，选择 console 可以看到输入的值。
        console.log(List[i]);
    };
```

在js中遍历字典的值可以这样
```
    for(i in Dict) {
        console.log(i + Dict[i]);//注意，此处 i 为键值
    }
```

>有关JS的用法可以参考 [W3school的js教程](http://www.w3school.com.cn/js/)
>更多Django的用法可以参考[自强学堂的Django教程](http://code.ziqiangxuetang.com/django/django-tutorial.html)

## JSON笔记

### JSON中如何把JSON字符串转为JSON对象

一般有三个函数，eval()、parseJSON()、JSON.parse()，用法分别如下：
 
```
var str = "{'name':'lee', 'age:':11}";   
var obj = eval('('+ str +')');      //方法1   
var obj = str.parseJSON();          //方法2   
var obj = JSON.parse(str);          //方法3 
```
>更多的可以参考[这里](http://blog.csdn.net/u014267402/article/details/53487859)

### JSON添加数据
可以通过 `push()`进行添加。

例子是处理从Django中获取的字典,并把值添加到option中的相应位置。
```
    var country = echarts.init(document.getElementById('country'));
    var countrydata = {{ countryjson|safe }};
    var content=''

    var option = {
    title : {
        text: '豆瓣Top250国家地区比例',
        subtext: '数据来源于豆瓣',
        x:'center'
    },
    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',
        left: 'left',
        data: []
    },
    series : [
        {
            name: '国家地区',
            type: 'pie',
            radius : '55%',
            center: ['50%', '60%'],
            data:[
            ],
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]
};

// 遍历字典内容
for(i in countrydata){
   cdata = '{value:'+countrydata[i]+', name:"'+i+'"}'
   // 把获取到的值添加到JSON相应的位置
   option['legend']['data'].push(i)
   //通过eval把JSON字符串转为JSON对象
   option['series'][0]['data'].push(eval('('+cdata+')'))
}
// 在控制台中显示
console.log(option['legend']['data'])
console.log(option['series'][0]['data'])
``` 

>获取JSON中相应的值可以用例子中的方法，如`option['legend']['data']`
>删除数据可以这样`delete option['legend']['data']`
>JSON教程可以参考[这里](http://www.runoob.com/json/json-tutorial.html)
>JSON格式数据的添加可以参考[这里](http://www.jb51.net/article/78433.htm)

