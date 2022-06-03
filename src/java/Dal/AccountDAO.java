/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dal;

import Models.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class AccountDAO extends DBContext {

    public Account getAccount(String user, String pass) {
        try {
            String sql = "select * from Accounts \n"
                    + "where UserName = ? \n"
                    + "and PassWord = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Account> getAllAccount() {
            List<Account> account = new ArrayList<>();
        try {
            String sql = "select UserName, Email from Accounts ";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
           while (rs.next()) {
                Account ac = new Account();
                ac.setName(rs.getString("UserName"));
                ac.setEmail(rs.getString("Email"));
                account.add(ac);
            }
        } catch (Exception e) {
        }
        return account;
    }
    
    public int insertAccount(String name, String pass, String role, String email) {
        int accountId = 0;
        try {
            String sql = "insert into dbo.[Accounts](UserName, PassWord,Role, Email) \n"
                    + "output inserted.AccountID \n"
                    + "values (?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, pass);
            stm.setString(3, role);
            stm.setString(4, email);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                accountId = rs.getInt(1);
                System.out.println(accountId);
            }
        } catch (Exception e) {
        }
        return accountId;
    }

    public void insertCustomer(int id, String name, String phone) {
        try {
            String sql = "insert into Customers (CustomerId, CustomerName, PhoneNumber) \n "
                    + "values (?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.setString(2, name);
            stm.setString(3, phone);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
}
