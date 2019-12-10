import java.sql.*;

public class MySQLDemo1 {
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/Web";

    static final String USER = "root";
    static final String PASSWD = "1234zxcv";

    public static void main(String[] args) {
        Connection conn = null;
        Statement stmt = null;

        try {
            Class.forName(JDBC_DRIVER);

            System.out.println("Connecting MySQL...");
            conn = DriverManager.getConnection(DB_URL, USER, PASSWD);

            stmt = conn.createStatement();
            String sql;
            sql = "SELECT * FROM StudentInfo JOIN ScoreTable USING(StudentID);";
            ResultSet result = stmt.executeQuery(sql);

            while (result.next()) {
                int id = result.getInt("StudentID");
                String name = result.getString("Name");
                String course = result.getString("Course");
                int score = result.getInt("Score");

                System.out.print("StudentID: " + id);
                System.out.print(" Name: " + name);
                System.out.print(" Course: " + course);
                System.out.print(" Score: " + score);
                System.out.print("\n");
            }
            result.close();
            stmt.close();
            conn.close();
        } catch(SQLException se) {
            se.printStackTrace();
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch(SQLException se2) {
            }
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch(SQLException se) {
                se.printStackTrace();
            }
        }
    }
}
