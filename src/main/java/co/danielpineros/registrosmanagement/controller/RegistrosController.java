package co.danielpineros.registrosmanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.danielpineros.registrosmanagement.model.Registros;
import co.danielpineros.registrosmanagement.service.RegistrosService;



import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RegistrosController {

	@Autowired
	private RegistrosService registrosService;
        
        
	
	@RequestMapping(value = {"/", "/home", "/index"})
	public ModelAndView getAllregistros() {
		ModelAndView mav = new ModelAndView("managereg");
		mav.addObject("registross", registrosService.get());
		return mav;
	}
	
	@RequestMapping(value = "/openAddregistrosForm")
	public ModelAndView openAddregistrosForm() {
		ModelAndView mav = new ModelAndView("addreg");
		mav.addObject("registros", new Registros());
		return mav;
	}
	
	@RequestMapping(value = "/registrosprocess")
	public ModelAndView registrosProcess(@ModelAttribute("registros") Registros registros) {
		ModelAndView mav = new ModelAndView("managereg");
		registrosService.save(registros);
		mav.addObject("registross", registrosService.get());
		return mav;
	}
	
	@RequestMapping(value = "/getSingleregistros")
	public ModelAndView editregistros(@RequestParam("registrosid") int id) {
		ModelAndView mav = new ModelAndView("addreg");
		mav.addObject("registros", registrosService.get(id));
		return mav;
	}
	
	@RequestMapping(value = "/deleteprocess")
	public ModelAndView deleteregistros(@RequestParam("registrosid") int id) {
		ModelAndView mav = new ModelAndView("managereg");
		registrosService.delete(id);
		mav.addObject("registross", registrosService.get());
		return mav;
	}
}
