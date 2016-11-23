package it.polimi.controller;


import it.polimi.model.Account;
import it.polimi.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


/**
 * Created by Jacopo Magni on 24/10/2016.
 */
@Controller
public class GeneralController {

    @Autowired
    private AccountService service;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String formLogin(Model model) {
        model.addAttribute(new Account());
        return "/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginForm(@ModelAttribute("Account")Account account, RedirectAttributes redirect){
        if(!service.validatePassword(account)){
            return "/loginFailed";
        } else {
            account.setOid(service.retrieveAccountId(account));
            redirect.addFlashAttribute("account", account);
            return "redirect:/profilePage";
        }
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String formRegistration(Model model) {
        model.addAttribute(new Account());
        return "/registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String formRegistration(@ModelAttribute("Account")Account account, RedirectAttributes redirect) {

        service.createAccount(account);
        redirect.addFlashAttribute("Account", account);

        return "redirect:/profilePage";
    }

    @RequestMapping(value = "/profilePage", method = RequestMethod.GET)
    public String formLogin(@ModelAttribute("account")Account account,Model model) {

        Account accountRetrived = service.retrieveAccountFromNickname(account.getNickname());
        model.addAttribute(accountRetrived);
        return "profilePage";
    }
}
