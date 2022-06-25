package com.example.sample;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class UserController {
  private static final Logger log = LoggerFactory.getLogger(UserController.class);
  
  @Autowired
  @Qualifier("com.example.sample.UserServiceImpl")
  private UserService service;
  
  
  @GetMapping("/")
  public String loginCheck() {
    
    return "test1";
  }
  
 
  
}
