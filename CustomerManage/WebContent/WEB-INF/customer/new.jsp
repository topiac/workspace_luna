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
 <h1>顧客管理</h1>
    <div class="main">
        <!-- alertが作動した際にformの処理を止める -->
        <form action="CustomerServlet" method="post" onsubmit="return funcConfirm()">
        <h2>新規登録</h2>
        <table border="1">
            <tr>
                <td class="title">氏名</td>
                <!-- 最大文字数を20文字に設定 -->
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
                <td><input name="email" id="email" type="text"　maxlength="100"></td>
            </tr>
        </table>
            <p>
                <!-- TODO ｢編集｣ボタン -->
                <button name="state" value="add">送信</button>
                <input type="button" value="戻る" onclick="history.back()">
            </p>
        </form>
    </div>
</body>
<script type="text/javascript">
    function funcConfirm() {
        // TODO バリデーションチェック･alertダイアログ処理
        const name = document.getElementById('name').value;
        const zip = document.getElementById('zip').value;
        const address1 = document.getElementById('address1').value;
        const address2 = document.getElementById('address2').value;
        const tel = document.getElementById('tel').value;
        const fax = document.getElementById('fax').value;
        const email = document.getElementById('email').value;
        // 入力がない場合はエラーメッセージを表示させる
        // address2,faxは入力なしを許容する
        if(name==""){
        alert('氏名が入力されていません');
        return false
        }
        if(zip==""){
        alert('郵便番号が入力されていません');
        return false
        }
        if(address1==""){
        alert('住所1が入力されていません');
        return false
        }
        if(tel==""){
        alert('電話番号が入力されていません');
        return false
        }
        if(email==""){
        alert('E-mailが入力されていません');
        return false
        }

        // if(!zip.match(/^\d{3}[-]\d{4}$|^\d{7}$/)){
        // alert('郵便番号を正しく入力してください');
        // return false
        // }
        // if(!zip.match(/[\w\-._]+@[\w\-._]+\.[A-Za-z]+/)){
        // alert('メールアドレスを正しく入力してください');
        // return false
        // }
    }
</script>
</html>