package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

// db 연동하기 위한 소스이다.

public class Application {
	
	Connection conn;	//	
	public Application() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn
			=DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe",
					"system","oracle"
					
					);// 
			}catch(Exception ex) {
				ex.printStackTrace();
			}
	}
	public Connection getConn() {	// 게터를 실행하면 conn의 값을 반환한다.
		return conn;
	}

	}

