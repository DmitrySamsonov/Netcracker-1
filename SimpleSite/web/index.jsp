<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Онлайн библиотека::Вход</title>
  <link href="css/style_index.css" rel="stylesheet" type="text/css">
</head>

<body>
<div class="main">

  <div class="content">
    <p class="title"><span class="text"><img src="images/database.jpg" width="76" height="77" hspace="10" vspace="10" align="middle"></span></p>

    <p class="title">Онлайн База Данных</p>
    <p class="text">В данном приложении мы обращаемся к JDBC Resources, кот. ссылается на JDBC Connection Pools, кот. в свою очередь привязан к Базе данных.</p>

    <p class="text">База Данных Business состоит из 2 таблиц:</p>
    <p><span class="text"><img src="images/products.png" width="247" height="128" hspace="10" vspace="10" align="top" >
    <img src="images/shops.png" width="250" height="106" hspace="10" vspace="10" align="top"></span></p>

    <p class="text"><b>Примеры sql-запросов:</b></p>
    <p class="text">select * from business.products</p>
    <p class="text">select * from business.shops</p>
  </div>

  <div class="login_div">
    <p class="title">Введите SQL-запрос:</p>
    <form class="login_form" name="sql_request" action="viewdata.jsp" method="POST">
      <input type="text-area" name="sql_request" value="" size="40" />
      <input type="submit" value="Go" />
    </form>
  </div>

  <div class="footer">
    Разработчик: Дмитрий Самсонов, 2016 г
  </div>
</div>
</body>

</html>

