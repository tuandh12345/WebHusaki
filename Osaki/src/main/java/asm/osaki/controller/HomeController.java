package asm.osaki.controller;

import asm.osaki.entities.product.Cart;
import asm.osaki.entities.product.FlashSale;
import asm.osaki.entities.product.Product;
import asm.osaki.entities.product.PromotionalDetails;
import asm.osaki.entities.user.InvoiceDetail;
import asm.osaki.entities.user.UserCustom;
import asm.osaki.entities.user.WishList;
import asm.osaki.model.PromotionalDetailModel;
import asm.osaki.repositories.product_repositories.CartRepository;
import asm.osaki.repositories.product_repositories.FlashSaleRepository;
import asm.osaki.repositories.product_repositories.ProductRepository;
import asm.osaki.repositories.product_repositories.PromotionalDetailsRepository;
import asm.osaki.repositories.user_repositories.InvoiceDetailRepository;
import asm.osaki.repositories.user_repositories.WishListRepository;
import asm.osaki.service.SessionService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.math.BigDecimal;
import java.util.*;

@Controller
public class HomeController {
	@Autowired
	ProductRepository productRepository;
	@Autowired
	InvoiceDetailRepository invoiceDetailRepository;
	@Autowired
	SessionService sessionService;
	@Autowired
	FlashSaleRepository flashSaleRepository;
	@Autowired
	PromotionalDetailsRepository promotionalDetailsRepository;
	@Autowired
	WishListRepository wishListRepository;
	@Autowired
	CartRepository cartRepository;

	@GetMapping({"", "/", "index", "home"})
	public String getHome(@ModelAttribute("UserC") UserCustom userCustom1, Model model, HttpSession session) {
		UserCustom userCustom = (UserCustom) session.getAttribute("userLogin");
		if (userCustom != null) {
			UserCustom userC = new UserCustom();
			userC.setFullName(userCustom.getFullName());
			userC.setEmail(userCustom.getEmail());
			System.out.println(userC.getEmail());
			model.addAttribute("UserC", userC);
		}
		//product
		List<Product> productList = productRepository.findAll();
		//cart
		if (userCustom != null) {
			List<Cart> cartList = cartRepository.findAllByUser(userCustom);
			double totalPrice = sessionService.totalPriceCartByUserId(userCustom);
			System.out.println("tota");
		
			model.addAttribute("totalPrice", totalPrice);
			model.addAttribute("cartList", cartList);
		}
		List<PromotionalDetails> promotionalDetailsList1 = promotionalDetailsRepository.findAll();
		model.addAttribute("promotionalDetailsList1", promotionalDetailsList1);
		model.addAttribute("userLogin", userCustom);
		model.addAttribute("listProduct", productRepository.findAll());

		//bestSellers
		List<Object[]> bestSellers = invoiceDetailRepository.countProductsOrderByCountDesc();
		model.addAttribute("bestSellers", bestSellers);
		//in ra danh sach bestsellers
		System.out.println("bestSellers: ");
		for (Object[] result : bestSellers) {
			System.out.println("ProductID: " + result[0] + ", Name: " + result[1] + ", Count: " + result[2]);
		}

		//flashSale
		FlashSale flashSale = flashSaleRepository.findByIsStatus(false);
		if (flashSale != null) {
			Date date = flashSaleRepository.findByIsStatus(false).getEndDay();
			model.addAttribute("flashSale", flashSale);
			Date now = new Date();
			//check day
			Boolean checkDay = date.before(now) || date.equals(now);
			System.out.println("checkDay: " + checkDay);//false
			List<PromotionalDetails> promotionalDetailsList = promotionalDetailsRepository.findByFlashSale_Id(flashSale.getId());
			List<PromotionalDetailModel> list = new ArrayList<>();
			List<PromotionalDetailModel> listPercent = new ArrayList<>();
			for (Product listProduct : productList) {
				for (PromotionalDetails listPd : promotionalDetailsList) {
					if (listProduct.getProductID() == (listPd.getId())) {
						PromotionalDetailModel promotionalDetailModel = new PromotionalDetailModel();
						promotionalDetailModel.setId(listPd.getId());
						promotionalDetailModel.setStatus(listPd.isStatus());
						promotionalDetailModel.setDiscountedPrice(listPd.getDiscountedPrice());
						promotionalDetailModel.setProductID(listPd.getProductID());
						promotionalDetailModel.setFlashSale(listPd.getFlashSale());
						promotionalDetailModel.setDiscountedPrice((listProduct.getPrice() - listPd.getDiscountedPrice()) / listProduct.getPrice() * 100);
						list.add(promotionalDetailModel);
					}
				}
			}
			Collections.sort(list, Comparator.comparingDouble(PromotionalDetailModel::getDiscountedPrice).reversed());
			// In ra 3 sản phẩm có giảm giá cao nhất
			System.out.println("3 sản phẩm giảm giá cao nhất:");
			int count = 0;
			for (PromotionalDetailModel promotionalDetail : list) {
				if (count < 3) {
					listPercent.add(promotionalDetail);
					count++;
				} else {
					break; // Dừng khi đã in ra 3 sản phẩm
				}
			}
			System.out.println("PromotionalDetails is" + promotionalDetailsList.get(0).getId());
			model.addAttribute("now", now.getMonth());
			model.addAttribute("listPercent", listPercent);
			model.addAttribute("checkDay", checkDay);
			model.addAttribute("listPromotionalDetail", promotionalDetailsRepository.findByFlashSale_Id(flashSale.getId()));
		} else {
			model.addAttribute("checkDay", true);
			Date now = new Date();
			model.addAttribute("now", now.getMonth());
		}
		return "home";
	}

	@ModelAttribute("likeList")
	public List<WishList> getCategories(HttpSession session) {
		UserCustom userCustom = (UserCustom) session.getAttribute("userLogin");

		System.out.println("userCustom1: " + userCustom);
		if (userCustom != null) {
			List<WishList> listLike = wishListRepository.findByUser(userCustom);
			return listLike;
		}
		return null;
	}
}
