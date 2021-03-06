package com.example.sample;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("com.example.sample.UserServiceImpl")
public class UserServiceImpl implements UserService {
  
  @Autowired
  private UserMapper mapper;

 
  @Override
  public UserDTO read(Map map) {
    return mapper.read(map);
  }
  
  
}
