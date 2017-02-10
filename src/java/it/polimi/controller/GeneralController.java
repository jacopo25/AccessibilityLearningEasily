package it.polimi.controller;



import it.polimi.model.Account;
import it.polimi.model.Answers;
import it.polimi.service.AccountService;
import it.polimi.service.LectureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.ArrayList;


/**
 * Created by Jacopo Magni on 24/10/2016.
 */
@Controller
public class GeneralController {

    @Autowired
    private AccountService service;
    @Autowired
    private LectureService LectureService;

    Account loggedUser= new Account();
    boolean logVerify = false;
    ArrayList<Integer> correctAnswers;
    ArrayList<Integer> userFilteredList = new ArrayList<>();


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String formLogin(Model model) {
        //Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        //System.out.println("Tempo quando sono in login "+timestamp);
        //System.out.println("Conferma registrazione quando sono in login "+account.getConfirmReg());
        logVerify = true;
        Account account = new Account();
        model.addAttribute("Account", account);

        return "/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginForm(Model model, @Valid @ModelAttribute("Account")Account account, BindingResult bindingResult, RedirectAttributes redirect){



        if(bindingResult.hasErrors()){
            return "/login";
            }
        else {
            if (!service.validatePassword(account)){
                return "redirect:/login";
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
        logVerify = false;
        return "/registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String formRegistration(@ModelAttribute("Account")Account account, RedirectAttributes redirect) {


        service.createAccount(account);
        redirect.addFlashAttribute("Account", account);

        return "redirect:/login";
    }

    @RequestMapping(value = "/profilePage", method = RequestMethod.GET)
    public String formProfile(@ModelAttribute("account")Account account,Model model) {


        if (logVerify == true) {
            Account accountRetrived = service.retrieveAccountFromNickname(account.getNickname());
            model.addAttribute(accountRetrived);
            loggedUser = accountRetrived;
            }
         else
            model.addAttribute(loggedUser);
        logVerify = false;
        return "profilePage";
    }

    @RequestMapping(value = "/courses", method = RequestMethod.GET)
    public String coursesList(Model model) {

        logVerify = false;
        model.addAttribute("account", loggedUser);
        return "courses";
    }

    @RequestMapping(value = "/historyCourse", method = RequestMethod.GET)
    public String historyCourseLectureList(Model model) {

        logVerify = false;
        model.addAttribute("account", loggedUser);
        return "historyCourse";
    }

    @RequestMapping(value = "/mathCourse", method = RequestMethod.GET)
    public String mathCourseLectureList(Model model) {

        logVerify = false;
        model.addAttribute("account", loggedUser);
        return "mathCourse";
    }

    @RequestMapping(value = "/aboutUs", method = RequestMethod.GET)
    public String Info(Model model) {

        logVerify = false;
        model.addAttribute("account", loggedUser);
        return "aboutUs";
    }

    @RequestMapping(value = "/historyLectureOne", method = RequestMethod.GET)
    public String HistoryLecture1(Model model) {

        logVerify = false;
        model.addAttribute("account", loggedUser);
        return "historyLectureOne";
    }

    @RequestMapping(value = "/historyLectureTwo", method = RequestMethod.GET)
    public String HistoryLecture2(Model model) {

        logVerify = false;
        model.addAttribute("account", loggedUser);
        return "historyLectureTwo";
    }

    @RequestMapping(value = "/historyLectureThree", method = RequestMethod.GET)
    public String HistoryLecture3(Model model) {

        logVerify = false;
        model.addAttribute("account", loggedUser);
        return "historyLectureThree";
    }

    @RequestMapping(value = "/historyLectureOneQuestions", method = RequestMethod.GET)
    public String HistoryLecture1Q(Model model) {

        logVerify = false;
        model.addAttribute("account", loggedUser);
        return "historyLectureOneQuestions";
    }

    @RequestMapping(value = "/historyLectureTwoQuestions", method = RequestMethod.GET)
    public String HistoryLecture2Q(Model model) {

        logVerify = false;
        model.addAttribute("account", loggedUser);
        return "historyLectureTwoQuestions";
    }

    @RequestMapping(value = "/historyLectureThreeQuestions", method = RequestMethod.GET)
    public String HistoryLecture3Q(Model model) {

        logVerify = false;
        model.addAttribute("account", loggedUser);
        return "historyLectureThreeQuestions";
    }

    @RequestMapping(value = "/answers", method = RequestMethod.GET)
    public String answers(Model model,@ModelAttribute("answers")Answers answers) {

        logVerify = false;
        model.addAttribute("account", loggedUser);
        correctAnswers = LectureService.computeLectureAnswers(1);

        int j=0;

            if (answers.getUserAnswer1() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer1()));
                j++;
            }
            if (answers.getUserAnswer2() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer2()));
                j++;
            }
            if (answers.getUserAnswer3() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer3()));
                j++;
            }
            if (answers.getUserAnswer4() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer4()));
                j++;
            }
            if (answers.getUserAnswer5() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer5()));
                j++;
            }
            if (answers.getUserAnswer6() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer6()));
                j++;
            }
            if (answers.getUserAnswer7() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer7()));
                j++;
            }
            if (answers.getUserAnswer8() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer8()));
                j++;
            }
            if (answers.getUserAnswer9() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer9()));
                j++;
            }
            if (answers.getUserAnswer10() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer10()));
                j++;
            }
            if (answers.getUserAnswer11() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer11()));
                j++;
            }
            if (answers.getUserAnswer12() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer12()));
                j++;
            }
            if (answers.getUserAnswer13() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer13()));
                j++;
            }
            if (answers.getUserAnswer14() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer14()));
                j++;
            }
            if (answers.getUserAnswer15() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer15()));
                j++;
            }
            if (answers.getUserAnswer16() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer16()));
                j++;
            }
            if (answers.getUserAnswer17() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer17()));
                j++;
            }
            if (answers.getUserAnswer18() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer18()));
                j++;
            }
            if (answers.getUserAnswer19() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer19()));
                j++;
            }
            if (answers.getUserAnswer20() != null) {
                userFilteredList.add(Integer.parseInt(answers.getUserAnswer20()));
                j++;
            }


        for(int i=0;i<5;i++){

            if(i==0){
                if (userFilteredList.get(i) == correctAnswers.get(i)) {
                    answers.setTips(i,"CORRECT");
                }
                else
                    answers.setTips(i,"WRONG");
                    }
             else
                 if ((userFilteredList.get(i)-(4*(i))) == correctAnswers.get(i)) {
                answers.setTips(i,"CORRECT");
                     }
                 else
                  answers.setTips(i,"WRONG");
        }
        model.addAttribute("filteredAnswer",userFilteredList);
        model.addAttribute("correctAnswer",correctAnswers);
        return "answers";
    }

    @RequestMapping(value = "/questions", method = RequestMethod.GET)
    public String questions(Model model) {

        logVerify = false;
        model.addAttribute("account", loggedUser);
        model.addAttribute("answers", new Answers());
        return "questions";
    }

    @RequestMapping(value = "/questions", method = RequestMethod.POST)
    public String QuestionForm(@ModelAttribute("answers")Answers answers, RedirectAttributes redirect){

        System.out.println(answers.getUserAnswer1());
        System.out.println(answers.getUserAnswer2());
        System.out.println(answers.getUserAnswer3());
        System.out.println(answers.getUserAnswer4());
        System.out.println(answers.getUserAnswer5());
        System.out.println(answers.getUserAnswer6());
        System.out.println(answers.getUserAnswer7());
        System.out.println(answers.getUserAnswer8());
        System.out.println(answers.getUserAnswer9());
        System.out.println(answers.getUserAnswer10());
        System.out.println(answers.getUserAnswer11());
        System.out.println(answers.getUserAnswer12());
        System.out.println(answers.getUserAnswer13());
        System.out.println(answers.getUserAnswer14());
        System.out.println(answers.getUserAnswer15());
        System.out.println(answers.getUserAnswer16());
        System.out.println(answers.getUserAnswer17());
        System.out.println(answers.getUserAnswer18());
        System.out.println(answers.getUserAnswer19());
        System.out.println(answers.getUserAnswer20());
        redirect.addFlashAttribute("answers", answers);
        return "redirect:/answers";


    }

}
