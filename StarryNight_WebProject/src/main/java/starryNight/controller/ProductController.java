package starryNight.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import starryNight.service.BasketService;
import starryNight.service.ProductService;
import starryNight.vo.Basket;
import starryNight.vo.Member;
import starryNight.vo.Product;
import starryNight.vo.Review;
import starryNight.vo.Wishlist;

@Controller
public class ProductController {
	@Autowired(required = false)
	private ProductService service;
	@Autowired(required=false)
	private BasketService service1;
	// http://localhost:7080/StarryNight/ProductDetail.do
	@RequestMapping("ProductDetail.do") 
	public String ProductDetail(HttpSession session, @RequestParam(value="product_no",defaultValue="1") int product_no,
			Model d) {
		
		
		if(session.getAttribute("member_no")!=null) {
		d.addAttribute("member_no", session.getAttribute("member_no"));
		Wishlist w = new Wishlist();
		int member_no = (int) session.getAttribute("member_no");
		w.setMember_no(member_no);
		w.setProduct_no(product_no);
		d.addAttribute("wish", service.WishCheck(w));
		}
		d.addAttribute("plist", service.ProductList(product_no));
		d.addAttribute("rlist", service.ReviewList(product_no));
		return "WEB-INF\\views\\product\\ProductDetail.jsp";
	}
	
	// http://localhost:7080/StarryNight/InsertReviewForm.do
		@RequestMapping("InsertReviewForm.do")
		public String InsertReviewForm(HttpSession session,Wishlist w,
				Model d) {
			
			w.setMember_no((int) session.getAttribute("member_no"));
			d.addAttribute("member_no", w.getMember_no());
			d.addAttribute("wish", service.WishCheck(w));
			d.addAttribute("plist", service.ProductList(w.getProduct_no()));
			return "WEB-INF\\views\\product\\InsertReviewForm.jsp";
		}
	@RequestMapping("basket.do")
	public String basket(HttpSession session,Basket b, Model d) {
		b.setMember_no( (int) session.getAttribute("member_no"));
		d.addAttribute("basket", b);
		service.InsertBasket(b);
		d.addAttribute("bslist",service1.basketList(b));
		return "WEB-INF\\views\\basket\\basket.jsp";
	}
	@RequestMapping("InsertWishlist.do") 
	public String InsertWishlist(HttpSession session,Wishlist w,
			Model d) {
		w.setMember_no((int) session.getAttribute("member_no"));
		service.InsertWishlist(w);
		return "pageJsonReport";
	}

	@RequestMapping("DeleteWishlist.do") 
	public String DeleteWishlist(HttpSession session,Wishlist w,
			Model d) {
		w.setMember_no((int) session.getAttribute("member_no"));
		service.DeleteWishlist(w);
		return "pageJsonReport";
	}
	
	

	// http://localhost:7080/StarryNight/InsertReview.do
	@PostMapping("InsertReview.do")
	public String InsertReview(HttpSession session,@RequestParam("report") MultipartFile report,
			 Review r, Model d) {
		System.out.println("업로드된 파일명:"+report.getOriginalFilename());
		int member_no =(int)session.getAttribute("member_no");
		d.addAttribute("member_no", member_no);
		d.addAttribute("plist", service.ProductList(r.getProduct_no()));
		d.addAttribute("rlist", service.ReviewList(r.getProduct_no()));
		String fname = report.getOriginalFilename();
		r.setReview_img(fname);
		String path = "C:\\a01_javaexp\\StarryNight\\src\\main\\webapp\\ReviewImg\\";
		File f = new File(path+fname);
		System.out.println(path+fname);
		try {
			report.transferTo(f);
			System.out.println("파일 업로드 완료");
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		service.InsertReview(r);
		d.addAttribute("isInsert","Y");
		return "WEB-INF\\views\\product\\InsertReviewForm.jsp";
	}
	
	@RequestMapping("AdminProduct.do")
	public String AdminProduct(Product p,Model d) {
		d.addAttribute("plist", service.ProductListAll(p));
		return "WEB-INF\\views\\admin\\AdminProduct.jsp";
	}

	@RequestMapping("DeleteProduct.do") 
	public String DeleteProduct(@RequestParam("product_no")int product_no,
			Model d) {
		service.DeleteProduct(product_no);
		return "pageJsonReport";
	}
	
	@PostMapping("InsertProduct.do")
	public String InsertProduct(@RequestParam("report") MultipartFile report,Product p,
			Model d) {
		System.out.println("업로드된 파일명:"+report.getOriginalFilename());
		String fname = report.getOriginalFilename();
		p.setProduct_img(fname);
		service.InsertProduct(p);
		d.addAttribute("plist", service.ProductListAll2());
		d.addAttribute("isInsert","Y");
		String path = "C:\\a01_javaexp\\StarryNight\\src\\main\\webapp\\ProductImg\\";
		File f = new File(path+fname);
		try {
			report.transferTo(f);
			System.out.println("파일 업로드 완료");
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "WEB-INF\\views\\admin\\AdminProduct.jsp";
	}
	// http://localhost:7080/StarryNight/login.do
	@RequestMapping("login.do") 
	public String login(Model d) {
		return "WEB-INF\\views\\product\\login.jsp";
	}
	
	@RequestMapping("loginCheck.do") 
	public String loginCheck(HttpSession session,Member m,Model d) {
		int ck = service.loginCheck(m);
		if(ck==1) {
			d.addAttribute("loginYN", "Y");
			int member_no = service.selectMemberno(m.getEmail());
			session.setAttribute("member_no", member_no);
		}else {
			d.addAttribute("loginYN", "N");
		}
		
		
		return "WEB-INF\\views\\product\\login.jsp";
	}
	
	@RequestMapping("logout.do") 
	public String logout(HttpSession session,Model d) {
		session.invalidate();
		return "WEB-INF\\views\\mainpage\\mainpages.jsp";
	}

	// http://localhost:7080/StarryNight/testProduct.do
	// 삭제
	@RequestMapping("testProduct.do")
	public String testProduct(Model d) {

		return "WEB-INF\\views\\mainpage\\testProduct.jsp";
	}

}
