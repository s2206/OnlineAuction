package com.seller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class SellerWelcomeAction {

	private static final Logger logger = LoggerFactory.getLogger("SellerWelcomeAction");

	ArrayList<User> list = new ArrayList<User>();

	public ArrayList<User> getList() {
		return list;
	}

	public void setList(ArrayList<User> list) {
		this.list = list;
	}

	public String execute() {
		try {
			Connection con = null;
			Class.forName("com.mysql.jdbc.Driver");
			// System.out.println("Driver loaded...");
			logger.info("Driver loaded ...");

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auction", "root", "root");
			if (con != null) {
				// System.out.println("connection established...");
				logger.info("connection established....");
			}

			String sql = "select * from auction.auctionuserdetails";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			logger.info("rs: " + rs);

			while (rs.next()) {
				logger.info("rs has row");
				User user = new User();
				user.setPrice(rs.getInt("price"));
				user.setItem(rs.getString("item"));
				user.setUsername(rs.getString("username"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getInt("phone"));
				user.setAddress(rs.getString("address"));
				list.add(user);
				// logger.info("rs user: " + user);
				logger.info("Data retrieved....");
			}
			if (con != null) {
				con.close();
			}

		} catch (Exception e) {

		}
		return "success";
	}

}