package asm.osaki.controller;

import asm.osaki.entities.product.Cart;
import asm.osaki.entities.product.Product;
import asm.osaki.entities.product.PromotionalDetails;
import asm.osaki.entities.user.Address;
import asm.osaki.entities.user.UserCustom;
import asm.osaki.entities.user.Voucher;
import asm.osaki.repositories.product_repositories.CartRepository;
import asm.osaki.repositories.product_repositories.ProductRepository;
import asm.osaki.repositories.product_repositories.PromotionalDetailsRepository;
import asm.osaki.repositories.user_repositories.AddressRepository;
import asm.osaki.repositories.user_repositories.CommentRepository;
import asm.osaki.repositories.user_repositories.VoucherRepository;
import asm.osaki.service.ParamService;
import asm.osaki.service.SessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;
import java.util.Optional;

@Controller

public class ProductDetailController {
    @Autowired
    ProductRepository productRepository;
    @Autowired
    CommentRepository commentRepository;
    @Autowired
    ParamService paramService;

    @Autowired
    CartRepository cartRepository;
    @Autowired
    SessionService sessionService;

    @Autowired
    PromotionalDetailsRepository promotionalDetailsRepository;

    @Autowired
    AddressRepository addressRepository;
    @Autowired
    VoucherRepository voucherRepository;
    @GetMapping("product/{id}")
    public String Product(@ModelAttribute("UserC") UserCustom userCustom1, @PathVariable("id") Integer productId, Model model) {
        Product product = productRepository.findByProductID(productId);
        UserCustom userCustom = sessionService.get("userLogin");
        if (userCustom != null) {
            List<Voucher> voucherList =voucherRepository.findByAllUserID(userCustom.getUserID());
            List<Cart> cartList = cartRepository.findAllByUser(userCustom);
            double totalPrice = sessionService.totalPriceCartByUserId(userCustom);
            List<Address> addressList = addressRepository.findByUser(userCustom);
            List<PromotionalDetails> promotionalDetailsList = promotionalDetailsRepository.findAll();
            model.addAttribute("promotionalDetailsList", promotionalDetailsList);
            model.addAttribute("totalPrice", totalPrice);
            model.addAttribute("cartList", cartList);
            model.addAttribute("addressList", addressList);
            model.addAttribute("voucherList", voucherList);
        }
        model.addAttribute("product", product);
        model.addAttribute("comment",commentRepository.findByProductID(product));
        System.out.println("run susscessfully product" + product);
        return "product";
    }
}
