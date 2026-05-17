# cinema-manager-system-db

老式影院管理系统，已修复到可在现代环境运行。架构保持不变：JSP + Servlet + Service + DAO + Hibernate + MySQL。

## 功能

- 用户注册、登录、修改个人信息。
- 浏览影院、电影、场次。
- 下单、查看订单、申请退单。
- 添加和查看影评。
- 管理员登录后维护电影、场次、订单和账户信息。

## 运行环境

| 组件 | 版本 |
|---|---|
| JDK | JDK 25 |
| Maven | 3.9+ |
| Tomcat | 10.1+ |
| MySQL | 8.x / 9.x |

说明：项目运行在 Tomcat 10.1，因此 Servlet 包名已迁移到 `jakarta.servlet.*`。

## 数据库初始化

先创建数据库，再导入 SQL：

```sql
CREATE DATABASE cinemamanagersystem DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE cinemamanagersystem;
SOURCE cinemamanagersystem.sql;
```

默认连接配置在：

```text
src/main/resources/hibernate.cfg.xml
```

默认账号密码：

```xml
<property name="hibernate.connection.username">root</property>
<property name="hibernate.connection.password">root</property>
```

如果本机 MySQL 不是 `root/root`，改这里。

## 构建

```bash
mvn clean package
```

构建产物：

```text
target/cinema-manager-system-db-1.0.0.war
```

## 部署到 Tomcat

把 WAR 放到 Tomcat 10.1 的 `webapps` 目录。

如果希望访问路径是：

```text
http://localhost:8081/cinema-manager-system-db/
```

部署时把 WAR 重命名为：

```text
cinema-manager-system-db.war
```

如果直接部署默认构建产物，访问路径通常是：

```text
http://localhost:8080/cinema-manager-system-db-1.0.0/
```

端口取决于 Tomcat 的 `conf/server.xml`。本地调试时当前使用的是 `8081`。

## 默认账号

可用测试账号以数据库 SQL 中的数据为准。当前本地常用普通用户：

```text
用户名：112
密码：12
```

## 页面入口

- `/` 默认进入登录页。
- 登录页只显示注册入口。
- 登录后进入用户首页，再进入影院浏览、订单页面。
- 前端依赖已改为本地静态资源，断网时仍能加载基础样式。

## 项目结构

```text
WebTest/src                 Java 源码
WebTest/WebRoot             JSP、静态资源、WEB-INF/web.xml
src/main/resources          Hibernate 配置和映射
cinemamanagersystem.sql     数据库结构和初始数据
pom.xml                     Maven WAR 构建配置
```

## 注意事项

- 不要忽略 `pom.xml`、`hibernate.cfg.xml`、`*.hbm.xml`、`web.xml`，这些都是运行必需文件。
- `target/`、`.m2/`、`runtime/` 是本地构建或运行产物，不应提交。
- 本项目没有迁移到 Spring Boot，业务结构保持原样。
