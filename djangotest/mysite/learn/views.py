#coding:utf-8
from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
from learn.models import Person as per
from learn.models import News,test2,test1

#引用forms.py
from .forms import AddForm

#引用通用视图 ListView
from django.views.generic.list import ListView

#引用通用视图 DetailView
from django.views.generic.detail import DetailView

import markdown2
from django.utils import timezone

#主页
def index(request):
	contents=News.objects.all().order_by('-id')
	return render(request,'index.html',{'contents':contents})


#关于
def about(request):
	return render(request,'about.html')

#文章列表
def news(request):
	#objects.all().order_by('-id')表示显示表中的全部数据并降序显示出来，‘-’表示降序，默认为升序
	n = News.objects.all().order_by('-id')
	return render(request,'news.html',{'news':n})

#这个可以无视，测试用的
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
	try:
		t = test1.objects.all()
	except:
		t = 'null'
		return render(request,'404.html',{'form':form,'names':name,})
		exit()
	return render(request,'test.html',{'form':form,'names':name,'test1':t,})
#显示文章	
def article(request,artid):
	#~ artid = request.GET['artid']
	n = News.objects.filter(id__gt=artid).order_by('id')[:1]
	p = News.objects.filter(id__lt=artid).order_by('-id')[:1]
	artcon = News.objects.get(id=artid)
	
	if not n:
		n = ''
	else :
		n = n[0]
	if not p:
		p = ''
	else:
		p = p[0]
	
	return render(request,'article.html',{'artcon':artcon,'pre':p,'next':n,})

#文章搜索
def search(request):
	
	Seaname = request.POST['seaname'] 
	search_name = News.objects.filter(title__icontains=Seaname).order_by('-id')
	return render(request,'search.html',{'Seanames':search_name})

def tag(request,tid):
	tags = test2.objects.filter(b=tid)
	return render(request,'tag.html',{'tags':tags})
	

#通用视图测试 ListView 
class testview(ListView):
	#~ template_name 属性指定了需要渲染的模板
	template_name = 'listviewtest.html'
	#~ context_object_name 指定了模板中使用的上下文变量,ListView 中默认使用 object_list 作为上下文变量
	context_object_name = 'artlist'	
	#~ model 属性指定了要获取表中的所有数据，它的功能相当于 article_list = Article.objects.all()，但是当你需要使用过滤条件或者对数据进行一定的操作时，则需要重写 ListView 中获取数据的方法（get_queryset 方法）
	model = News

class detailviewtest(DetailView):
	'''
	model,template_name,context_object_name的意思和ListView中的一样
	'''
	model = News
	
	template_name = 'datailviewtest.html'
	
	context_object_name = 'article'
	
	#~ pk_url_kwarg 定义用来获取对应的单条数据，需要传递主键的值，这里要跟urls.py中设置的一样。
	pk_url_kwarg = 'article_id'
	
	
	#~ get_object 方法获取 pk_url_kwarg 中所要查找的对象
	#~ def get_object(self,queryset=None):
		#~ obj = super(detailviewtest,self).get_object()
		#~ obj.body = markdown2.markdown(obj.content,extras=['fenced-code-blocks'],)
		#~ return obj
	
	# 在 get_context_data() 函数中可以用于传递一些额外的内容到网页
	def get_context_data(self,**kwargs):
		context = super(detailviewtest,self).get_context_data(**kwargs)
		context['tag'] = per.objects.filter(id=1)
		return context

