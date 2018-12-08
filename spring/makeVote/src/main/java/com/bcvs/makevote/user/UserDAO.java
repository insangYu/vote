package com.bcvs.makevote.user;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

public class UserDAO {

	private Connection conn; // �����ͺ��̽��� �����ϱ� ���� ��ü

	private PreparedStatement pstmt;

	private ResultSet rs; // ������ ���� �� �ִ� ������ ������ش�.

//mysql ó���κ�

	public UserDAO() {

		// �����ڸ� ������ش�.

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

//�α��� ó���κ�

	public int login(String userid, String pwd1) {

		String SQL = "SELECT pw1 FROM user WHERE userid = ?";

		try {

			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, userid);

			rs = pstmt.executeQuery();

			if (rs.next()) {

				if (rs.getString(1).equals(pwd1)) {

					return 1; // �α��� ����

				}

			} else {

				return 0; // ��й�ȣ ����ġ

			}

			return -1; // ���̵����

		} catch (Exception e) {

			e.printStackTrace();

		}

		return -2; // �����ͺ��̽� ����

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

		return -1; // �����ͺ��̽� ����

	}

}