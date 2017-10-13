

## Django 后台使用django-ckeditor-master富文本编辑器的方法

>使用版本：Django1.10.1+Python3.5

可以下载`django-ckeditor-master`，然后参照`demo`来设置

下载地址：[https://github.com/django-ckeditor/django-ckeditor](https://github.com/django-ckeditor/django-ckeditor)

--------------------------------------------------------------

### 基本步骤：

解压下载的文件，然后复制`ckeditor`和`ckeditor_uploader`两个文件夹到项目文件夹下(就是有manage.py的文件夹下)

修改`settings.py`:

添加`ckeditor`和`ckeditor_uploader`两个文件夹到`INSTALLED_APPS`中
```
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',

    'learn',
    'ckeditor',
    'ckeditor_uploader',
]
```

添加或者修改下面内容。
```
# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.10/howto/static-files/
#存放静态文件的目录，在APP的文件夹下新建
STATIC_URL = '/static/'
STATIC_ROOT = os.path.join(BASE_DIR,'static')

#Upload folder
#存放上传文件的根目录，会在项目文件夹下新建
MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR,'media')

#ckeditor
#存放ckeditor上传的文件，在media文件夹下
CKEDITOR_UPLOAD_PATH = "uploads/"
#这两个可以注释掉
CKEDITOR_IMAGE_BACKEND = "pillow"
CKEDITOR_JQUERY_URL = '//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js'

#the ckeditor default config .
#ckeditor在页面显示的默认设置。
CKEDITOR_CONFIGS = {
		'default':{
			'toolbar':'Full',
			'height':400,
			'width':1000,
		},
		'awesome_ckeditor':{
			'toolbar':'Basic',
		},
}
```
修改`urls.py`:

添加
```
from django.conf import settings
from django.conf.urls.static import static
```

修改`urlpatterns`,这里的是Django1.10.1，要是其他的请参考demo中的`urls.py`
```
urlpatterns = [
	
    url(r'^admin/', admin.site.urls),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT) + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
```

修改`models.py`

添加
```
from ckeditor_uploader.fields import RichTextUploadingField
from ckeditor.fields import RichTextField
```
使用的代码类似如下：
```
class News(models.Model):
	title = models.CharField('标题',max_length=32)
	content = RichTextUploadingField(verbose_name='内容')
```

>注意：`RichTextUploadingField`带有本地上传，`RichTextField`没有

最后在`admin.py`中使用就可以了

```
#添加models
from .models import News
#这个可以不写，是用来显示列表的
class Newsadmin(admin.ModelAdmin):
	list_display = ('title','addtime','tag',)

admin.site.register(News,Newsadmin)
```

这样就可以了
