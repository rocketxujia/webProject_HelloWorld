IDEA_webProject_helloworld
==========================

学习在IntellJ IDEA下新建web项目, 并部署到tomcat下。
通过学习理解以下几点：
* 1. IDEA新建web项目步骤，建立标准的web开发目录结构（IDEA 默认生成，与tomcat推荐的目录一致http://tomcat.apache.org/tomcat-7.0-doc/appdev/processes.html）。
* 2. 配置部署到本地tomcat的IDEA 的 configurations操作。 （实质上是生成tomcat实例， 在 C:\Documents and Settings\xujia01\.IntelliJIdea11\system\tomcat）
* 3. 做到通过IDEA 或 手动 熟练的在tomcat部署： 关注web.xml,  context.xml 文件的作用。 
* 4. 包含简单模拟后台servlet实现ajax（/jsonp）响应过程（已添加json包）
* 5. 已mysql为例， 使用jdbc技术连接数据库，进行sql操作。
** 1) 需要使用phpMyAdmin来创建好dbtest数据库， 新建user表。
** 2) 通过demo（register.jsp）插入用户到表。
** 3) 学习理解了使用数据库的存储过程技术来执行任务