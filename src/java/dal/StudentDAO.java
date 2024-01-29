package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;

public class StudentDAO extends DBContext {

    //doc tat ca cac ban ghi tu StudentDB
    public List<Student> getAll() {
        List<Student> list = new ArrayList<>();
        String sql = "select * from Student";
        //chay lenhj truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Student s = new Student(rs.getString("rollno"), rs.getString("name"), rs.getFloat("mark"));
                list.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;
    }

    public void insertStudent(Student student) throws SQLException {
        String sql = "INSERT [dbo].[Student] ([rollno], [name], [mark]) VALUES (?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, student.getRollNo());
        statement.setString(2, student.getName());
        statement.setFloat(3, student.getMark());

        statement.executeUpdate();
    }

    public void updateStudent(Student student) throws SQLException {
        String sql = "UPDATE [Student] SET [rollno] = ?, [name] = ?, [mark] = ? WHERE [rollno] = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString (1, student.getRollNo());
        statement.setString(2, student.getName());
        statement.setFloat(3, student.getMark());
        statement.setString (4, student.getRollNo());

        statement.executeUpdate();
    }
    
    public void deleteStudent(String rollno) throws SQLException {
        String sql = "DELETE FROM [Student] WHERE [rollno] = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, rollno);

        statement.executeUpdate();
    }

    public static void main(String[] args) {
        StudentDAO sd = new StudentDAO();
        List<Student> li = sd.getAll();
        System.out.println(li.get(0).getRollNo());
        System.out.println(li.get(0).getName());
        System.out.println(li.get(0).getMark());

    }

}
