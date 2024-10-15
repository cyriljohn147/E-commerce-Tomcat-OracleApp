package Implement;

import java.sql.*;

public class Implement {
    Connection c;
    Statement s;
    public ResultSet r;

    public Implement() throws Exception {
        getConnection();
    }

    public static void main(String[] args) throws Exception {
        Implement impl = new Implement();
        System.out.println("Items in cart: " + impl.getCartItemCount());
        impl.deleteItem("sample3");
    }

    public int userLogin(String userName, String password) throws Exception {
        ResultSet r = s.executeQuery("select * from users");
        while (r.next()) {
            if (userName.equals(r.getString(1)) && password.equals(r.getString(2)) && "user".equals(r.getString(3))) {
                return 1;
            } else if (userName.equals("admin-user")) {
                return 2;
            }
        }
        return 0;
    }

    public int userRegistration(String userName, String password) throws Exception {
        int r = s.executeUpdate("insert into users values('" + userName + "','" + password + "','user')");
        return r > 0 ? 1 : 0;
    }

    public void items() throws Exception {
        r = s.executeQuery("select * from jerseys");
        // Do not close r here; manage it later where it's used
    }

    public void cart() throws Exception {
        r = s.executeQuery("select * from cart");
        // Do not close r here; manage it later where it's used
    }

    public int editItem(String productName, String newName, String brand, String price) throws Exception {
        int r = s.executeUpdate("update jerseys set name='" + newName + "',brand='" + brand + "',price='" + price + "' where name='" + productName + "'");
        return r > 0 ? 1 : 0;
    }

    public int deleteItem(String productName) throws Exception {
        int r = s.executeUpdate("delete from jerseys where name='" + productName + "'");
        return r > 0 ? 1 : 0;
    }

    public int addItem(String productName, String brand, String price) throws Exception {
        int r = s.executeUpdate("insert into jerseys values('" + productName + "','" + brand + "','" + price + "')");
        return r > 0 ? 1 : 0;
    }

    public int addCart(String Name) throws Exception {
        r = s.executeQuery("select * from jerseys");
        while (r.next()) {
            if (Name.equals(r.getString(1))) {
                int res = s.executeUpdate("insert into cart values('" + r.getString(1) + "','" + r.getString(2) + "','" + r.getString(3) + "')");
                return res > 0 ? 1 : 0;
            }
        }
        return 0;
    }

  public int deleteCart(String Name) throws Exception{
    int r = s.executeUpdate("delete from cart where name='"+Name+"'");
    return r > 0 ? 1 : 0;
  }

    public int getCartItemCount() throws Exception {
        try (
            ResultSet r = s.executeQuery("SELECT COUNT(*) FROM cart")) {
            if (r.next()) {
                return r.getInt(1); // Return the actual count
            }
        }
        return 0; // In case there are no items
    }
  public int clearCart() throws Exception {
    int r = s.executeUpdate("DELETE FROM cart");
    return r > 0 ? 1 : 0; // Return 1 if deletion was successful, otherwise 0
}

    public void getConnection() throws Exception {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCLCDB", "sys as sysdba", "Cyriljohn147#");
            s = c.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
