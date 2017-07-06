package controller;

import java.io.File;
import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import error.Product404;
import validator.ProductValidator;
import model.Category;
import model.Clanek;
import model.Product;
import service.CategoryService;
import service.ClanekService;
import service.ProductService;

@Controller
public class AdminController {

	@Autowired
	public ProductService productService;

	@Autowired
	public CategoryService categoryService;

	@Autowired
	public ClanekService clanekService;

	@Autowired
	public ProductValidator productValidator;

	// prihlaseni do administrace jmeno a heslo: admin

	@RequestMapping(value = "/admin/prihlaseni")
	public String zobrazPrihlaseni(Model model) {
		return "/admin/prihlaseni";
	}

	@RequestMapping(value = "/login")
	public String poPrihlaseni(Model model) {
		return "/admin/prihlaseni";
	}

	//vraceni spatnych prihlasovacich udaju
	@RequestMapping(value = "/loginfailed")
	public String loginerror(Model model) {

		model.addAttribute("error", "true");
		return "/admin/prihlaseni";

	}

	// odhlaseni z administrace

	@RequestMapping(value = "/admin/logout")
	public String logout() {
		return "redirect:/";
	}

	@RequestMapping("/list")
	public String list() {
		return "redirect:/admin/list/1";
	}

	// zobrazeni uvodni stranky administrace s prehledy
	@RequestMapping("/admin/index")
	public String index(Model model) {
		model.addAttribute("products", productService.getAllProducts());
		model.addAttribute("produkty", productService.getAll());
		model.addAttribute("categories", categoryService.list());
		model.addAttribute("kategorie", categoryService.listAktivni());
		model.addAttribute("clankyaktivni", clanekService.getClankyAktivni());
		model.addAttribute("clanky", clanekService.getClanekAll());
		return "/admin/index";

	}

	// zobrazeni listu produktu
	@RequestMapping("/admin/products")
	public String zobrazProduktyProEditaci(Model model) {
		model.addAttribute("products", productService.getAll());
		model.addAttribute("categories", categoryService.list());
		return "admin/products";

	}

	// zobrazeni listu kategorii
	@RequestMapping("/admin/kategorie")
	public String zobrazKategorie(Model model) {
		model.addAttribute("categories", categoryService.list());
		return "admin/kategorie";

	}

	// pridani produktu - zobrazeni stranky
	@RequestMapping(value = "/admin/product/add", method = RequestMethod.GET)
	public String getFormularPridaniProduktu(@ModelAttribute("newProduct") Product newProduct, Model model) {
		model.addAttribute("categories", categoryService.list());
		model.addAttribute("products", productService.list());
		return "/admin/productPridani";
	}

	// pridani produktu
	@RequestMapping(value = "/admin/product/add", method = RequestMethod.POST)
	public String pridejNovyProdukt(@ModelAttribute("newProduct") @Valid Product productToBeAdded, BindingResult result,
			HttpServletRequest request, Model model) {
		if (result.hasErrors()) {
			return "/admin/productPridani";
		}

		String[] suppressedFields = result.getSuppressedFields();

		if (suppressedFields.length > 0) {
			throw new RuntimeException(
					"Snažíte se vyplnit nedovolené pole: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}

		productService.add(productToBeAdded);
		model.addAttribute("products", productService.getAll());
		return "redirect:/admin/products";
	}

	// deaktivace produktu
	@RequestMapping(value = "/admin/product/deaktivovat", method = RequestMethod.POST)
	public String deaktivovatProdukt(@RequestParam("productId") String productId, Model model) {
		productService.deaktivovat(productId);
		model.addAttribute("products", productService.getAll());

		return "redirect:/admin/products";
	}

	// aktivace produktu
	@RequestMapping(value = "/admin/product/aktivovat", method = RequestMethod.POST)
	public String aktivovatProdukt(@RequestParam("productId") String productId, Model model) {
		productService.aktivovat(productId);
		model.addAttribute("products", productService.getAll());

		return "redirect:/admin/products";
	}

	// smazani produktu
	@RequestMapping(value = "/admin/product/smazat", method = RequestMethod.POST)
	public String smazatProdukt(@RequestParam("productId") String productId, Model model) {
		productService.delete(productId);
		model.addAttribute("products", productService.getAll());

		return "redirect:/admin/products";
	}

	// editace produktu - zobrazeni stranky
	@RequestMapping(value = "/admin/product/editovat/{productId}")
	public String editovatProdukt(@PathVariable("productId") String productId, Map<String, Object> map) {
		Product product = productService.get(productId);
		map.put("product", product);
		map.put("categories", categoryService.list());

		return "/admin/editaceProduktu";

	}

	// editace produktu - ulozeni
	@RequestMapping(value = "/admin/update")
	public String aktualizujProdukt(@ModelAttribute("product") Product product, BindingResult result,
			@RequestParam("kategorie") String categoryId, Model model) {
		productService.update(product);

		model.addAttribute("products", productService.getAll());
		return "redirect:/admin/products";
	}

	// zobrazeni clanku
	@RequestMapping(value = "/admin/clanky")
	public String zobrazClanky(Model model) {
		model.addAttribute("clanky", clanekService.getClanekAll());
		return "/admin/clanky";
	}

	// pridani kategorie - zobrazeni formulare
	@RequestMapping(value = "/admin/kategorie/add", method = RequestMethod.GET)
	public String pridaniKategorie(@ModelAttribute("newKategorie") Category newKategorie, Model model) {
		model.addAttribute("categories", categoryService.list());

		return "/admin/kategoriePridani";
	}

	// ulozeni kategorie
	@RequestMapping(value = "/admin/kategorie/add", method = RequestMethod.POST)
	public String pridejNovouKategorii(@ModelAttribute("newKategorie") Category categoryToBeAdded, BindingResult result,
			HttpServletRequest request, Model model) {
		if (result.hasErrors()) {
			return "/admin/kategoriePridani";
		}

		String[] suppressedFields = result.getSuppressedFields();

		if (suppressedFields.length > 0) {
			throw new RuntimeException(
					"Snažíte se vyplnit nedovolené pole: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}

		categoryService.add(categoryToBeAdded);
		model.addAttribute("categoryToBeAdded", categoryService.list());
		return "redirect:/admin/kategorie";
	}

	// aktivace kategorie
	@RequestMapping(value = "/admin/kategorie/aktivuj", method = RequestMethod.POST)
	public String aktivujKategorii(@RequestParam("kategoryId") int kategoryId, Model model) {
		categoryService.aktivovat(kategoryId);
		model.addAttribute("categories", categoryService.list());

		return "redirect:/admin/kategorie";
	}

	// deaktivace kategorie
	@RequestMapping(value = "/admin/kategorie/deaktivuj", method = RequestMethod.POST)
	public String deaktivujKategorii(@RequestParam("kategoryId") int kategoryId, Model model) {
		categoryService.deaktivovat(kategoryId);
		model.addAttribute("categories", categoryService.list());

		return "redirect:/admin/kategorie";
	}

	// smazani kategorie
	@RequestMapping(value = "/admin/kategorie/smaz", method = RequestMethod.POST)
	public String smazKategorii(@RequestParam("kategoryId") int kategoryId, Model model) {
		categoryService.delete(kategoryId);
		model.addAttribute("categories", categoryService.list());

		return "redirect:/admin/kategorie";
	}

	// editace kategorie - zobrazeni formulare
	@RequestMapping(value = "/admin/kategorie/editovat/{katId}")
	public String editovatKategorii(@PathVariable("katId") int katId, Map<String, Object> map) {
		Category category = categoryService.get(katId);
		map.put("category", category);

		return "/admin/editaceKategorie";
	}

	// ulozeni editovane kategorie
	@RequestMapping(value = "/admin/updateKategorie")
	public String aktualizujKategorii(@ModelAttribute("category") Category category, BindingResult result,
			Model model) {
		categoryService.update(category);

		model.addAttribute("categories", categoryService.list());
		return "redirect:/admin/kategorie";
	}

	// pridani clanku - zobrazeni formulare
	@RequestMapping(value = "/admin/clanek/add", method = RequestMethod.GET)
	public String novyClanek(@ModelAttribute("newClanek") Clanek newClanek, Model model) {
		model.addAttribute("clanky", clanekService.getClanekAll());
		return "/admin/clanekPridani";

	}

	// ulozeni noveho clanku
	@RequestMapping(value = "/admin/clanek/add", method = RequestMethod.POST)
	public String pridejClanek(@ModelAttribute("newClanek") Clanek clanekKpridani, BindingResult result,
			HttpServletRequest request, Model model) {
		if (result.hasErrors()) {
			return "/admin/clanekPridani";
		}

		String[] suppressedFields = result.getSuppressedFields();

		if (suppressedFields.length > 0) {
			throw new RuntimeException(
					"Snažíte se vyplnit nedovolené pole: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}

		clanekService.addClanek(clanekKpridani);
		model.addAttribute("clanky", clanekService.getClanekAll());
		return "redirect:/admin/clanky";
	}

	// editace clanku - zobrazeni formulare
	@RequestMapping(value = "/admin/clanek/editovat/{id}")
	public String editovatClanek(@PathVariable("id") int id, Map<String, Object> map) {
		Clanek clanek = clanekService.getClanekById(id);
		map.put("clanek", clanek);

		return "/admin/editaceClanku";
	}

	// ulozeni editovaneho clanku
	@RequestMapping(value = "/admin/updateClanek")
	public String aktualizujClanek(@ModelAttribute("clanek") Clanek clanek, BindingResult result, Model model) {
		clanekService.updateClanek(clanek);
		model.addAttribute("clanky", clanekService.getClanekAll());

		return "redirect:/admin/clanky";
	}

	// aktivace clanku
	@RequestMapping(value = "/admin/clanek/aktivuj", method = RequestMethod.POST)
	public String aktivujClanek(@RequestParam("clanekId") int clanekId, Model model) {
		clanekService.aktivovat(clanekId);
		model.addAttribute("clanky", clanekService.getClanekAll());

		return "redirect:/admin/clanky";
	}

	// deaktivace clanku
	@RequestMapping(value = "/admin/clanek/deaktivuj", method = RequestMethod.POST)
	public String deaktivujClanek(@RequestParam("clanekId") int clanekId, Model model) {
		clanekService.deaktivovat(clanekId);
		model.addAttribute("clanky", clanekService.getClanekAll());
		
		return "redirect:/admin/clanky";
	}

	// smazani clanku
	@RequestMapping(value = "/admin/clanek/smaz", method = RequestMethod.POST)
	public String smazClanek(@RequestParam("clanekId") int clanekId, Model model) {
		Clanek clanek = clanekService.getClanekById(clanekId);
		clanekService.removeClanek(clanek);
		
		model.addAttribute("clanky", clanekService.getClanekAll());

		return "redirect:/admin/clanky";
	}

	// binder pro test dat
	@InitBinder
	public void initialiseBinder(WebDataBinder binder) {
		// binder.setValidator(productValidator);
		binder.setAllowedFields("id", "nazev", "popis", "cena", "kategorie", "pocet", "aktivni", "productImage",
				"jmeno", "zkratka", "nadpis", "abstrakt", "text", "popisDlouhy");
	}

	@ExceptionHandler(Product404.class)
	public ModelAndView handleError(HttpServletRequest req, Product404 exception) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("invalidProductId", exception.getProductId());
		mav.addObject("exception", exception);
		mav.addObject("url", req.getRequestURL() + "?" + req.getQueryString());
		mav.setViewName("productNotFound");
		return mav;
	}

}
