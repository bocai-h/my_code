## Rack原理(代码未来P210)
 
* * *

Rack的基本原理,是将对Rack对象发送HTTP请求的"环境"作为参数来调用call方法,并将以返回值的方式接受
的请求组织成HTTP请求.

调用该程序

> rackup hello.ru


然后,我们只要在浏览器中访问http://localhost:9292,就会显示出hello,world了.这次我们都使用了默认设置,端口号 "9292",HTTP服务器则是使用了
WEBrick,但是通过配置文件可以修改这些配置.

  