package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmpDao {  // 클래스가 생성이 되면 DB 연결

	/*
	 *  Dao 또는 Dto 처리하는 로직을 가지고있음.
	 *  각종 제어구조를 가지고있음.
	 *  
	 *  생성자의 역활 - 1. 객체생성을 하고 초기화를 시키고
	 *  			2. 클래스명과 반드시 일치하여야 한다.
	 *  			3. 리턴형이 없다.
	 *  			4. 
	 */
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public EmpDao() {
		conn = new Application().getConn();
		// Empvo 타입만 저장해서 반환한다.
	}
	 public List<EmpVo> search(String findStr){
		 List<EmpVo> list = new ArrayList<EmpVo>();
		 
		 try {
			 String sql = " select * from hr.employees "
					 		+" where first_name like ?  "
					 		+" or email like ? "
					 		+" or phone_number like ? ";
			 ps = conn.prepareStatement(sql);
			 ps.setString(1, "%" + findStr + "%");
			 // findStr 양 옆에 자동으로 '' 찍어준다
			 ps.setString(2, "%" + findStr + "%");
			 ps.setString(3, "%" + findStr + "%");
	// 물음표 3개 대신에 파라미터를 세팅해주어야한다.
	//	1번, 2번, 3번에 ''넣어서 전달해준다.
			 rs = ps.executeQuery();
			
			 while(rs.next()) {
				 EmpVo vo = new EmpVo();
				 
				 vo.setEmployee_id(rs.getInt("employee_id"));
				 vo.setFirst_name(rs.getString("first_name"));
				 vo.setEmail(rs.getString("email"));
				 vo.setPhone_number(rs.getString("phone_number"));
				 vo.setSalary(rs.getDouble("salary"));
				 
				 // vo 값이 list.add(vo)에 담긴다.
				 
				 list.add(vo);
			 }
			 
		 }catch(Exception ex) {
			 ex.printStackTrace();
		 } finally {
			 try {
				 conn.close();
			 }catch(SQLException e) {
				 e.printStackTrace();
			 }
		 }
		return list;
		 
	 }
	 
}
