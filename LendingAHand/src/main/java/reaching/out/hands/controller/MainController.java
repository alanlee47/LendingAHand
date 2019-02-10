package reaching.out.hands.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import reaching.out.hands.service.MainService;

import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;

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

    private String readFromWeb(String webURL) throws IOException {
        URL url = new URL(webURL);
        InputStream is =  url.openStream();
        String sum = "";
        try( BufferedReader br = new BufferedReader(new InputStreamReader(is))) {
            String line;

            while ((line = br.readLine()) != null) {
                sum+=line;
            }
        }
        catch (MalformedURLException e) {
            e.printStackTrace();
            throw new MalformedURLException("URL is malformed!!");
        }
        catch (IOException e) {
            e.printStackTrace();
            throw new IOException();
        }
        return sum;
    }

    @GetMapping("/result")
    ResponseEntity<String> result() {
        String temp = "";
        try{
            temp=readFromWeb("http://52.14.7.65/checkReturn");
        }
        catch (Exception e)
        {

        }
        return new ResponseEntity<>(temp, HttpStatus.OK);
    }

    @ResponseBody
    @GetMapping("/test")
    public String test() {
        String temp = "";
        try{
            temp=readFromWeb("http://52.14.7.65/checkReturn");
        }
        catch (Exception e)
        {

        }
        return temp;
    }

    private String validateUser(String user, String pass) throws Exception{
        FileReader fr =
                new FileReader("/Users/jobvillamil/Desktop/cred.txt");

        int i;
        boolean hasUsername = false;
        String username = "";
        String password = "";
        while ((i = fr.read()) != -1) {
            if((char) i == ';')
            {
                if(username.equals(user) && password.equals(pass))
                    return username+":"+password;
                else{
                    username = "";
                    password = "";
                    hasUsername = false;
                }
            }
            else if((char) i != '-' ){
                if(hasUsername)
                    password += (char) i;
                else
                    username += (char) + i;
            }
            else
            {
                hasUsername = true;
            }
        }

        return "error:error";
    }



    @GetMapping("/accounts")
    public String accounts(@RequestParam String user, @RequestParam String pass) {
        try{
            String userCred =  validateUser(user, pass);
            if(!userCred.equals("error:error"))
            {
                return "main";
            }
            else
                return "login";
        }
        catch (Exception e)
        {
            return  "error";
        }

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

    @GetMapping("createAccount")
    public String createAccount()
    {
        return "createAccount";
    }

    @GetMapping("profile")
    public String profile()
    {
        return "profile";
    }

    @GetMapping("main")
    public String main()
    {
        return "main";
    }


    // == model attributes ==
    @ModelAttribute("welcomeMessage")
    public String welcomeMessage() {
        return mainService.getWelcomeMessage();
    }
}
