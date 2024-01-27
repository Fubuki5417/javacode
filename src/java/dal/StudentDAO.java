package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
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
                Student s = new Student(rs.getString("rollNo"), rs.getString("name"), rs.getFloat("mark"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
    
    public void insertStudent (Student student) throws SQLException {
        String sql = "INSERT [dbo].[Student] ([rollno], [name], [mark]) VALUES (?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString (1, student.getRollNo());
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
