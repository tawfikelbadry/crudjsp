package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class control {

    Connection con;
    Statement st;
    public String q;

    DBconnection db;

    public void insert(team t) {
        con = DBconnection.getConnect();
        try {
            st = con.createStatement();
            this.q = "insert into teams(name,descr,technology,pass)values('" + t.getName() + "','" + t.getDesc() + "','" + t.getTechnology() + "','" + t.getPassword() + "')";
            st.executeUpdate(q);
            System.out.println("succesful");
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

    }

    public Object[][] display() {
        con = DBconnection.getConnect();
        Object obj[][] = null;
        try {
            st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from teams");
            rs.last();
            int row = rs.getRow();
            obj = new Object[row][5];
            rs.beforeFirst();
            int i = 0;
            while (rs.next()) {
                obj[i][0] = rs.getString(1);
                obj[i][1] = rs.getString(2);
                obj[i][2] = rs.getString(3);
                obj[i][3] = rs.getString(5);

                i++;
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return obj;

    }

    public int delete(int id) {
        int status = 0;
        try {
            con = DBconnection.getConnect();
            PreparedStatement ps = con.prepareStatement("delete from teams where id=?");
            ps.setInt(1, id);
            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.getMessage();
        }

        return status;
    }

    public Object[] getTeam(int id) {
        con = DBconnection.getConnect();
        Object obj[] = new Object[5];
        try {
            st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from teams where id= " + id + " ");

            if (rs.next()) {
                obj[0] = rs.getString(1);
                obj[1] = rs.getString(2);
                obj[2] = rs.getString(3);
                obj[3] = rs.getString(5);
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return obj;

    }

    public int update(team t) {
        con = DBconnection.getConnect();
        int status = 0;
        try {
            st = con.createStatement();
            this.q = "update teams set name='" + t.getName() + "',descr='" + t.getDesc() + "',pass= '" + t.getPassword() + "' where id= " + t.getId() + " ";
            status = st.executeUpdate(q);
            System.out.println("succesful");

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

        return status;

    }

}
