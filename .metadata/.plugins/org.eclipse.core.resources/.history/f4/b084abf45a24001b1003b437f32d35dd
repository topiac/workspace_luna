<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean class="user.UserBean" id="user" scope="session" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>顧客管理</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/style.css">
</head>
<body>
  <!--
        <div class="main">
        <h1>顧客管理</h1>
            <h2>新規登録</h2>
            <form action="" method="post">
                <table>
                    <tr>
                        <th>氏名</th>
                        <td><input name="" type="text"></td>
                    </tr>
                    <tr>
                        <th>郵便番号</th>
                        <td><input name="" type="text"></td>
                    </tr>
                    <tr>
                        <th>住所１</th>
                        <td><input name="" type="tel"></td>
                    </tr>
                    <tr>
                        <th>住所２</th>
                        <td><input name="" type="text"></td>
                    </tr>
                    <tr>
                        <th>TEL</th>
                        <td><input name="" type="text"></td>
                    </tr>
                    <tr>
                        <th>FAX</th>
                        <td><input name="" type="text"></td>
                    </tr>
                    <tr>
                        <th>E-mail</th>
                        <td><input name="" type="text"></td>
                    </tr>
                <table>
                    <div class="btn">
                        <input type="submit" value="送信">
                        <input type="button" value="戻る">
                    </div>
            </form>
        </div>
    </div> -->

    <h1>顧客管理</h1>
    <div class="main">
        <form action="CustomerServlet" method="post">
        <h2>詳細</h2>
        <table border="1">
            <tr>
                <td class="title">氏名</td>
                <td><input name="name" id="name" type="text" maxlength="20"></td>
            </tr>
            <tr>
                <td class="title">郵便番号</td>
                <td><input name="zip" id="zip" type="text" maxlength="20"></td>
            </tr>
            <tr>
                <td class="title">住所1</td>
                <td><input name="address1" id="address1" type="text" maxlength="100"></td>
            </tr>
            <tr>
                <td class="title">住所2</td>
                <td><input name="address2" id="address2" type="text"></td>
            </tr>
            <tr>
                <td class="title">TEL</td>
                <td><input name="tel" id="tel" type="text" maxlength="20"></td>
            </tr>
            <tr>
                <td class="title">FAX</td>
                <td><input name="fax" id="fax" type="text" maxlength="20"></td>
            </tr>
            <tr>
                <td class="title">E-mail</td>
                <td><input name="email" id="email" type="text"></td>
            </tr>
        </table>
            <p>
                <!-- TODO ｢編集｣ボタン -->
                <input type="submit" onclick="return funcConfirm()">
                <input type="hidden" name="state" value="new_confirm">
                <input type="button" value="戻る" onclick="history.back()">
            </p>
        </form>
    </div>
</body>
<script type="text/javascript">
    function funcConfirm() {

        // TODO バリデーションチェック･alertダイアログ処理
        const name = document.getElementById('name').value;
        if(name.length < 20){
        alert('8文字以上入力してください');
        return false
  }
    }
</script>
</html>
