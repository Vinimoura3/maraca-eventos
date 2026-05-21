package com.maraca.site.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MaracaController {

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("nomeNegocio", "Maraca Eventos");
        model.addAttribute("subtitulo", "Futebol Society e Quadras Esportivas");
        model.addAttribute("telefone", "(47) 98801-6969");
        model.addAttribute("endereco", "R. Leopoldo Hartmann, 132 - Itoupava Norte, Blumenau - SC, 89053-010");
        model.addAttribute("nota", "4,7");
        
        return "index";
    }
}