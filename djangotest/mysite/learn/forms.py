#coding:utf-8
#这个文件默认是没有的,要自己新建,是用来做POST提交用的


from django import forms

class AddForm(forms.Form):
	seaname = forms.CharField(max_length=32,label='',
	widget=forms.TextInput(attrs={'class': 'searchText'}),
	)
