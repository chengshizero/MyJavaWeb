

<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <table style="width: 400px;">
        <tr>
            <td colspan="2" style="text-align: center;font-weight: bold; font-size: 16pt;padding: 10px;">會員登入</td>
        </tr>
        <tr>
            <td style="text-align: right;font-weight: bold;padding: 10px;">帳號：</td>
            <td style="padding: 10px;"><input type="text" name="acct" placeholder="請輸入帳號" required="required" /></td>
        </tr>
        <tr>
        <a href="PageFooter_Info.jsp"></a>
            <td style="text-align: right;font-weight: bold;padding: 10px;">密碼：</td>
            <td style="padding: 10px;"><input type="password" name="pass" placeholder="請輸入密碼" required="required" /></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;padding: 10px;">
                <input type="submit" value="送出">&nbsp;&nbsp;
                <input type="reset" value="重置">
            </td>
        </tr>
    </table>
