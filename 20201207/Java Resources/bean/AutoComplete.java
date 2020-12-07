package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AutoComplete {  	// 필드에 conn, ps, rs 를 생성
		
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public AutoComplete() {
		conn=new Application().getConn(); // 어플리케이션에서의 겟 콘을 가지고와 conn 에 입력
	/*var data = ['java', 'jara', 'jagopa', 'jsp', 'javascript', 
					'like', 'love', 'life'] 
					--> ' '(x) "" (o)*/
	}
		public String getData() { // jQuery 의 autocomplete에서 사용하기.
		
			StringBuffer sb = new StringBuffer(); 
			// 조금더 빠른 처리를 위해 StringBuffer를 사용
			// 스트링버퍼에 들어갈 첫번째는 
		try {
			String sql = "select first_name from hr.employees"; 
			// hr유저에서 employees ㅌ테이블에서 first name만 가져오기
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();// CRUD (insert, select, update, delete)
			
			// insert, update, delete - > executeUpdate() 로 이동
			// selecet 만 executeQuery로 들어감.
			sb.append("[");
			rs.next();
			sb.append("'" + rs.getString("first_name")+"'");
			
			while(rs.next()) {
				sb.append(", '" + rs.getString("first_name")+"'");
			}
			
			sb.append("]");

		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			String temp = sb.toString();	// 
			temp = temp.replaceAll("'", "\"");// \ 의 의미는 큰따옴표안에 또 쓰고 싶을때 사용.
		// ' 을 "으로 바꿔라.
			return temp;
		}
		
	}
}
