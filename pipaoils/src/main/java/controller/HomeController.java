package controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import service.ClanekService;



@Controller
public class HomeController {
	@Autowired
	public ClanekService clanekService;
	
	//uvodni stranka s nactenim aktualit
	@RequestMapping("/")
	public String uvitani(Model model) {
		model.addAttribute("clanky", clanekService.getClankyAktivni());
		return "uvod";
	}
	
	
	//zobrazeni clanku
	@RequestMapping("/clanek/{id}")
	public String zobrazClanek(@PathVariable("id") int id, Model model){
		model.addAttribute("clanek", clanekService.getClanekById(id));
		return "clanek";
	}


}
