package com.bcvs.makevote.user;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

public class UserDAO {

	private Connection conn; // 데이터베이스를 접근하기 위한 객체

	private PreparedStatement pstmt;

	private ResultSet rs; // 정보를 담을 수 있는 변수를 만들어준다.

//mysql 처리부분

	public UserDAO() {

		// 생성자를 만들어준다.

		try {

			String dbURL = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC";

			String dbID = "root";

			String dbPassword = "1234";

			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

		} catch (Exception e) {

			e.printStackTrace();

		}

	}

//로그인 처리부분

	public int login(String userid, String pwd1) {

		String SQL = "SELECT pw1 FROM user WHERE userid = ?";

		try {

			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, userid);

			rs = pstmt.executeQuery();

			if (rs.next()) {

				if (rs.getString(1).equals(pwd1)) {

					return 1; // 로그인 성공

				}

			} else {

				return 0; // 비밀번호 불일치

			}

			return -1; // 아이디없음

		} catch (Exception e) {

			e.printStackTrace();

		}

		return -2; // 데이터베이스 오류

	}

	public int join(User user) {

		String SQL = "INSERT INTO user VALUES (?,?,?,?,?)";

		try {

			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, user.getUserid());

			pstmt.setString(2, user.getPwd1());

			pstmt.setString(3, user.getFullname());

			pstmt.setString(4, user.getEmail());

			pstmt.setString(5, user.getTel());

			return pstmt.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();

		}

		return -1; // 데이터베이스 오류

	}

}