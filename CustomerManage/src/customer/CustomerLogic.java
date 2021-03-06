package customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.CustomerDao;
import util.LogUtil;

/**
 * 顧客情報のロジック
 */
public class CustomerLogic {

    /**
     * DAO経由で顧客情報をDBから取得する
     * @param id 取得する顧客情報のID
     * @return 顧客情報Bean
     */
    public CustomerBean load(int id) {
        LogUtil.println(this.getClass().getSimpleName() + "#load");

        CustomerDao customerDao = new CustomerDao();
        CustomerBean customer = customerDao.load(id);

        return customer;
    }

    /**
     * DAO経由で顧客情報をDBに追加する
     * @param customer 顧客情報Bean
     * @return エラーメッセージ(処理成功時、null)
     */
    public String add(CustomerBean customer) {
        LogUtil.println(this.getClass().getSimpleName() + "#add");

        // TODO実装部分
        // errMessageにnullを格納。データベース登録に成功した場合はこれがそのまま戻り値になる。
        String errMessage = null;
        CustomerDao customerDao = new CustomerDao();
        // データベース登録が失敗した場合(成功した場合は戻り値でnullが返ってくる)
        if (customerDao.add(customer) != null) {
        // MESSAGE_CAN_NOT_ADD = "追加できませんでした。" MessageConstantsクラス参照
            errMessage = MESSAGE_CAN_NOT_ADD;
        }
        return errMessage;
    }

    /**
     * DAO経由でDBの顧客情報を更新する
     * @param customer 顧客情報Bean
     * @return エラーメッセージ(処理成功時、null)
     */
    public String update(CustomerBean customer) {
        LogUtil.println(this.getClass().getSimpleName() + "#update");

        // TODO 未実装

        return null;
    }

    /**
     * DAO経由でDBの顧客情報を削除する
     * @param customer 顧客情報Bean
     * @return エラーメッセージ(処理成功時、null)
     */
    public String delete(CustomerBean customer) {
        LogUtil.println(this.getClass().getSimpleName() + "#delete");

        // TODO 未実装

        return null;
    }

    /**
     * リクエスト内の顧客情報をセッションに顧客情報Beanとして設定する
     * @param request 顧客情報を含むリクエスト
     */
    public void setCustomerBeanFromRequestToSession(HttpServletRequest request) {
        LogUtil.println(this.getClass().getSimpleName() + "#setCustomerBeanFromRequestToSession");

        // TODO実装部分
        CustomerBean customer = new Customer();

        // CustomerServletから引数で受け取ったrequestから顧客情報を取り出す処理
        request.setCharacterEncoding("UTF-8");
        // customer.setName(StringUtil.exchangeESCEncoding(request.getParameter("name")));
        // のようにまとめて書くことも可能かもしれません。(UserLogicクラスLoginServletクラスなど参照)
        // StringUtilはNULLでも例外が発生しないようにする処理のようです。
        // exchangeESCEncoding()はフォーム入力情報のエスケープ処理？要確認。
        String name = request.getParameter("name");
        String zip = request.getParameter("zip");
        String address1 = request.getParameter("address1");
        String address2 = request.getParameter("address2");
        String fax = request.getParameter("fax");
        String tel = request.getParameter("tel");
        String email = request.getParameter("email");

        customer.setName(name);
        customer.setZip(zip);
        customer.setAddress1(address1);
        customer.setAddress2(address2);
        customer.setFax(fax);
        customer.setTel(tel);
        customer.setEmail(email);

        HttpSession session = request.getSession();
        session.setAttribute("customer", customer);
    }
}