<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<title>顧客管理</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/style.css">
</head>
<body>
    <h1>顧客管理</h1>
    <div class="main">
        <!-- TODO ｢新規登録完了｣画面 -->
        <h2>新規登録未完了</h2>
        <h2><%=session.getAttribute("errMessage")%></h2>
        <p><button name="state" value="search" formaction="LoginServlet">検索画面</button></p>
    </div>
</body>
</html>
