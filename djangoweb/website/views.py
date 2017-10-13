from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
import pymysql,json

# 连接数据库
def mysqlconn():
	sqlconfig={
	'user': 'root',
	'password':'root',
	'db':'scrapy',
	'host': '127.0.0.1',
	'port': 3306,
	'charset':'utf8'
	}
	conn = pymysql.connect(**sqlconfig)
	return conn


def index(request):
	nine1 = 0;eight1 = 0;nine2 = 0;eight2 = 0;other=0
	age1=0;age2=0
	countrylist = [];countrydict={}
	conn = mysqlconn()
	cursor = conn.cursor()
	cursor.execute('select * from douban_movie')
	sel = cursor.fetchall()
	# 遍历数据库中的数据
	for i in sel:
		# 统计评分
		if float(i[4]) >= 9.5:
			nine1 = nine1+1
		elif  9.0<= float(i[4]) <9.5:
			nine2 = nine2+1
		elif  8.5<= float(i[4]) <9.0:
			eight1 = eight1+1
		elif  8.0<= float(i[4]) <8.5:
			eight2 = eight2+1
		else:
			other = other+1  

		# 统计年份
		reldate = i[3].split('/')
		relage = reldate[0]
		if int(relage) >= 2000:
			age1 = age1+1
		elif int(relage) < 2000:
			age2 = age2+1

		# 获取数据库中的国家地区并统计，1964这个是录入数据库中的数据位置有问题
		relcountry = reldate[1].split()
		if relcountry[0] == '1964':
			relcountry[0] = '中国大陆'
		countrylist.append(relcountry[0])
		for country in countrylist:
			countnum = countrylist.count(country)
			countrydict[country]=countnum
		# 把countrydict转为JSON
		countryjson = json.dumps(countrydict)
	# 传递值到前端
	return render(request,'index.html',{'nine1':nine1,'nine2':nine2,'eight1':eight1,
		'eight2':eight2,'other':other,'age1':age1,'age2':age2,'countryjson':countryjson})