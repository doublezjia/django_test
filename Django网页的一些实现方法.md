>使用版本：Django1.10.1+Python3.5

### Django实现文章摘要

可以通过`truncatewords_html`或者`truncatechars_html`（django 1.7以上）来实现

用法如下：
```
{{content|truncatewords_html:10}}
```
>后面的数字为要截取的字符。

### django不能创建数据库中的表的解决方法

显示`No migrations to apply`.

可以尝试删除该app名字下的`migrations`下的`__init__.py`等文件。

执行下面这两条命令：（在项目目录下）
```  
python manage.py makemigrations you_app_name(你的APP的名称)
python manage.py migrate
```

### Django表单使用POST提交方法

新建一个`forms.py`的文件

在forms.py中添加类似如下的内容
```
from django import forms

class AddForm(forms.Form):
	seaname = forms.CharField(max_length=32,label='',
	widget=forms.TextInput(attrs={'class': 'searchText'}),
	)
```

要注意的是，因为网页中表单输入框是直接使用这`forms.py`中定义的内容，所以网页中要输入框还是下拉菜单，要在这里定义相应的`Field`.

然后就在`views.py`中定义相应的页面。

代码类似如下：
```
#引用forms.py
from .forms import AddForm
def test(request):
	#通过POST来提交数据
	if request.method == 'POST':
		form = AddForm(request.POST)
		if form.is_valid():
			seaname = form.cleaned_data['seaname']
			#~ return render(request,'search.html',{'seaname':seaname})
	else:
		form = AddForm()
		name = per.objects.all()
	return render(request,'test.html',{'form':form,'names':name})
```

在网页中使用的代码如下，`form`中的`method`要选择`POST`：
```
<form action="{% url 'search' %}" method="post">
<!-- 用post来提交必须要有 csrf_token ,输入框通过form实现 -->
{% csrf_token %}
{{ form }}
<input type="submit" name="Submit" value="搜 索" class='searchButton'>
</form>
```
>参考：[http://www.ziqiangxuetang.com/django/django-forms.html](http://www.ziqiangxuetang.com/django/django-forms.html)

### Django-form如何定制前端样式
```
class CommentForm(forms.Form):
    name = forms.CharField(widget=forms.TextInput(attrs={'class': 'special'}))
    comment = forms.CharField(widget=forms.TextInput(attrs={'size': '40'}))
```
`forms`中的`Field`有一个参数叫`widgets`，通过该参数可以设置`HTML属性`。此外`forms`中还有个`label`参数可以设置显示的标题，如果没有设置`lable`，默认是显示变量名。


### Django输出数据库表中的内容排序

可以通过`order_by(*fields)`

默认情况下，`QuerySet`返回的查询结果是根据model类的`Meta`设置所提供的`ordering`项中定义的排序元组来进行对象排序的。你可以使用`order_by`方法覆盖之前`QuerySet`中的排序设置。

如：
```
search_name = News.objects.filter(title__icontains=Seaname).order_by('-id')

"-id" 前面的负号"?"表示降序排序。默认是采用升序排序。要随机排序，就使用"?"，例如：

News.objects.all().order_by('-id')
```
>注意：`order_by('?')`可能会非常缓慢和消耗过多资源，这取决于你所使用的数据库。

### 修改后台中表的显示为中文可以这样
```
class News(models.Model):
	title = models.CharField('标题',max_length=32)
	content = RichTextUploadingField(verbose_name='内容')
	addtime = models.DateField('发表时间',auto_now=True)	
	tag = models.SlugField('TAG',max_length=50)
	def __str__(self):
		#返回显示的名称
		return self.title
	class Meta:
		#后台表的显示为中文
		verbose_name = '新闻'
		verbose_name_plural = '新闻'
		#ordering是用来排序用的
		ordering = ['addtime']
```

### 后台编辑使用选择框可以这样写
```
class Person(models.Model):
	#前一个是属性，后一个是后台显示的内容
	Sex = (
	('男','man'),
	('女','woman'),
	)
	name = models.CharField('名称',max_length=32)
	age = models.IntegerField('年龄',)	
	#通过choices来使用
	sex = models.CharField(max_length=1,choices=Sex)
	addtime = models.DateField(auto_now=True)
	def __str__(self):
		return self.name
```

### 一些不错的网站和文档

Django官方文档

[https://docs.djangoproject.com/en/1.7/](https://docs.djangoproject.com/en/1.7/)

一个不错的Django博客开发实战教程

[http://www.jianshu.com/p/3bf9fb2a7e31#](http://www.jianshu.com/p/3bf9fb2a7e31#)

经典的SQL语句大全

[http://www.cnblogs.com/yubinfeng/archive/2010/11/02/1867386.html](http://www.cnblogs.com/yubinfeng/archive/2010/11/02/1867386.html)

Django和数据库相关

[http://nanwangting.blog.51cto.com/608135/1149257](http://nanwangting.blog.51cto.com/608135/1149257)