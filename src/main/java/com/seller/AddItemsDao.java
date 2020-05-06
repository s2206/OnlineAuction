package com.seller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class AddItemsDao {

	private static final Logger logger = LoggerFactory.getLogger("AddItemsDao");

	public static int save(AddItemAction ai) {

		int status = 0;

		try {
			Connection con = null;
			Class.forName("com.mysql.jdbc.Driver");

			logger.info("Driver loaded ...");

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auction", "root", "root");
			if (con != null) {
				logger.info("connection established....");
			}
			
			String sql = "insert into auction.additem(SellerName, Item, Price, ActiveBid) values (?,?,?,?)";

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, ai.getSellername());
			ps.setString(2, ai.getItem());
			ps.setInt(3, 0);
			ps.setString(4, "Yes");

			status = ps.executeUpdate();
			logger.info("Updated item added with bid active as yes...");
			if (con != null) {
				con.close();
			}

		} catch (Exception e) {
		}

		return status;
	}

}
