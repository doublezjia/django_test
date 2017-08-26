from django.contrib import admin
from .models import News,Person,Anav,Article,test1,test,test2
# Register your models here.

class Newsadmin(admin.ModelAdmin):
	list_display = ('title','addtime','tag',)

class Articleadmin(admin.ModelAdmin):
	list_display = ('title','addtime','tag',)

admin.site.register(News,Newsadmin)
admin.site.register(Person)
admin.site.register(Anav)
admin.site.register(Article,Articleadmin)
admin.site.register(test1)
admin.site.register(test)
admin.site.register(test2)
