package reaching.out.hands.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import reaching.out.hands.service.MainService;

@Slf4j
@Controller
public class MainController {

    // == fields ==
    private final MainService mainService;

    // == constructors ==
    @Autowired
    public MainController(MainService mainService) {
        this.mainService = mainService;
    }

    // == request methods ==

    // http://localhost:8080/LendingAHand/hello
    @ResponseBody
    @GetMapping("/hello")
    public String hello() {
        return "hello";
    }

    // http://localhost:8080/LendingAHand/welcome
    // http://localhost:8080/LendingAHand/welcome?user=Tim&age=23
    @GetMapping("welcome")
    public String welcome(@RequestParam String user, @RequestParam String age, Model model) {
        model.addAttribute("helloMessage", mainService.getHelloMessage(user));
        model.addAttribute("age", age);

        // prefix + name + suffix
        // /WEB-INF/view/welcome.jsp
        return "welcome";
    }

    @GetMapping("login")
    public String login()
    {
        return "login";
    }
    // == model attributes ==
    @ModelAttribute("welcomeMessage")
    public String welcomeMessage() {
        return mainService.getWelcomeMessage();
    }
}
