package it.polimi.controller;



import it.polimi.model.Account;
import it.polimi.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.sql.Timestamp;



/**
 * Created by Jacopo Magni on 24/10/2016.
 */
@Controller
public class GeneralController {

    @Autowired
    private AccountService service;

    Account loggedUser= new Account();

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String formLogin(Model model) {
        //Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        //System.out.println("Tempo quando sono in login "+timestamp);
        //System.out.println("Conferma registrazione quando sono in login "+account.getConfirmReg());
        model.addAttribute("Account",new Account());

        return "/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginForm(@Valid @ModelAttribute("Account")Account account, BindingResult bindingResult, RedirectAttributes redirect){
        if(bindingResult.hasErrors()){
            return "/login";
            }
        else {
            if (!service.validatePassword(account)) {

                return "redirect:/profilePage";
            } else {
                account.setOid(service.retrieveAccountId(account));
                redirect.addFlashAttribute("account", account);
                return "redirect:/profilePage";
            }
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
        //account.setConfirmReg(true);
        //Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        //System.out.println("Tempo quando clicco registrati "+timestamp);
        //System.out.println("Conferma registrazione quando clicco registrati "+account.getConfirmReg());
        redirect.addFlashAttribute("Account", account);

        return "redirect:/login";
    }

    @RequestMapping(value = "/profilePage", method = RequestMethod.GET)
    public String formProfile(@ModelAttribute("account")Account account,Model model) {

        Account accountRetrived = service.retrieveAccountFromNickname(account.getNickname());
        loggedUser = accountRetrived;
        model.addAttribute(accountRetrived);
        return "profilePage";
    }



    @RequestMapping(value = "/courses", method = RequestMethod.GET)
    public String CoursesList(@ModelAttribute("account")Account account,Model model) {

        model.addAttribute("account", loggedUser);
        return "courses";
    }


}
