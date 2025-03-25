package control;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import dao.DAO;

import entity.Account;
import entity.Cart;
import entity.Product;
import entity.SoLuongDaBan;
import entity.TongChiTieuBanHang;

@WebServlet(name = "OrderControl", urlPatterns = {"/order"})
public class OrderControl extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Account a = (Account) session.getAttribute("acc");
		if (a == null) {
			response.sendRedirect("login");
			return;
		}

		int accountID = a.getId();
		DAO dao = new DAO();
		List<Cart> cartList = dao.getCartByAccountID(accountID);
		List<Product> productList = dao.getAllProduct();

		double totalMoney = 0;
		for (Cart c : cartList) {
			for (Product p : productList) {
				if (c.getProductID() == p.getId()) {
					totalMoney += p.getPrice() * c.getAmount();
				}
			}
		}
		double totalMoneyVAT = totalMoney * 1.1;

		for (Cart c : cartList) {
			for (Product p : productList) {
				if (c.getProductID() == p.getId()) {
					int sellID = dao.getSellIDByProductID(p.getId());
					TongChiTieuBanHang t2 = dao.checkTongChiTieuBanHangExist(sellID);
					double tongTienBanHangThem = p.getPrice() * c.getAmount();
					if (t2 == null) {
						dao.insertTongChiTieuBanHang(sellID, 0, tongTienBanHangThem);
					} else {
						dao.editTongBanHang(sellID, tongTienBanHangThem);
					}

					SoLuongDaBan s = dao.checkSoLuongDaBanExist(p.getId());
					if (s == null) {
						dao.insertSoLuongDaBan(p.getId(), c.getAmount());
					} else {
						dao.editSoLuongDaBan(p.getId(), c.getAmount());
					}
				}
			}
		}

		dao.insertInvoice(accountID, totalMoneyVAT);
		TongChiTieuBanHang t = dao.checkTongChiTieuBanHangExist(accountID);
		if (t == null) {
			dao.insertTongChiTieuBanHang(accountID, totalMoneyVAT, 0);
		} else {
			dao.editTongChiTieu(accountID, totalMoneyVAT);
		}

		request.getRequestDispatcher("DatHang.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			Account a = (Account) session.getAttribute("acc");
			if (a == null) {
				response.sendRedirect("login");
				return;
			}

			int accountID = a.getId();
			DAO dao = new DAO();
			dao.deleteCartByAccountID(accountID);

			request.setAttribute("mess", "Đặt hàng thành công!");
		} catch (Exception e) {
			request.setAttribute("error", "Đặt hàng thất bại!");
			e.printStackTrace();
		}

		request.getRequestDispatcher("DatHang.jsp").forward(request, response);
	}
}
