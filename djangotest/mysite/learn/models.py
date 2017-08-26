#coding:utf-8
from django.db import models

from ckeditor_uploader.fields import RichTextUploadingField
from ckeditor.fields import RichTextField
# Create your models here.
class Person(models.Model):
	Sex = (
	('男','man'),
	('女','woman'),
	)
	name = models.CharField('名称',max_length=32)
	age = models.IntegerField('年龄',)	
	sex = models.CharField(max_length=1,choices=Sex)
	addtime = models.DateField(auto_now=True)
	def __str__(self):
		return self.name

class News(models.Model):
	title = models.CharField('标题',max_length=32)
	content = RichTextUploadingField(verbose_name='内容')
	addtime = models.DateField('发表时间',auto_now=True)	
	tag = models.SlugField('TAG',max_length=50)
	def __str__(self):
		return self.title
	class Meta:
		verbose_name = '新闻'
		verbose_name_plural = '新闻'
		ordering = ['-addtime']

class Anav(models.Model):
	title = models.CharField('导航标题',max_length=32)
	addtime = models.DateField(auto_now=True)
	
	def __str__(self):
		return self.title
class Article(models.Model):
	title = models.CharField('标题',max_length=32)
	content = RichTextUploadingField(verbose_name='内容')
	addtime = models.DateField('发表时间',auto_now=True)	
	tag = models.SlugField('TAG',max_length=50)
	def __str__(self):
		return self.title
	class Meta:
		verbose_name = '文章'
		verbose_name_plural = '文章'

class test(models.Model):
	title = models.CharField('导航标题',max_length=32)
	topped = models.BooleanField('置顶', default=False)
	def __str__(self):
		return self.title

class test1(models.Model):
	title = models.CharField('导航标题',max_length=32)
	a = models.ForeignKey(test)
	def __str__(self):
		return self.title

class test2(models.Model):
	title = models.CharField('导航标题',max_length=32)
	b = models.ManyToManyField(test1)
	img = models.ImageField()
	def __str__(self):
		return self.title
