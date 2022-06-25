package com.example.sample;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;



@RestController
public class DataController {
  
  @Autowired
  @Qualifier("com.example.sample.UserServiceImpl")
  private UserService service;
  
  
  @GetMapping("/data/login")
  public ResponseEntity<UserDTO> getList(@RequestParam(name ="id")String id,@RequestParam(name ="pw")String pw) {

    Map map = new HashMap();
    map.put("id", id);
    map.put("pw", pw);

    return new ResponseEntity<UserDTO>(service.read(map), HttpStatus.OK);
  }
}
