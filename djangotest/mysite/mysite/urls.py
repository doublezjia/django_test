"""mysite URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.10/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url,include
from django.contrib import admin
from learn import views as learn_views

from django.conf import settings
from django.conf.urls.static import static
#~ from django.contrib.staticfiles import views

#引用views 中定义的通用视图 类
from learn.views import testview,detailviewtest

urlpatterns = [
    url(r'^$',learn_views.index,name='index'),
    url(r'^about/',learn_views.about,name='about'),
    url(r'^news/',learn_views.news,name='news'),
    url(r'^admin/', admin.site.urls),
    url(r'^test/',learn_views.test,name='test'),
    url(r'^search/',learn_views.search,name='search'),
    url(r'^tag/(?P<tid>\d+)$',learn_views.tag,name='tag'),
    
    #通用视图 要用 as_view()
    url(r'^listviewtest/',testview.as_view(),name='listviewtest'),
    url(r'^article/(?P<article_id>\d+)\.html$',detailviewtest.as_view(),name='detailviewtest'),
    
    
    #使用(?P<>\d+)的形式捕获值给<>中得参数，比如(?P<artid>\d+)，当访问/article/3时，将会将3捕获给artid,这个值会传到learn_views.article,这样我们就可以判断展示哪个Article了
    url(r'^article/(?P<artid>\d+)\.html$',learn_views.article,name='article'),
    url(r'^ckeditor/', include('ckeditor_uploader.urls')),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT) + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)



