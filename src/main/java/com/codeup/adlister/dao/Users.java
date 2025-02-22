package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    List<User> all();
    User findByUsername(String username);
    Long insert(User user);
    User findById(Long user_id);
    void deleteUsers(Long id);
    void makeAdmin(Boolean admin, Long id);
}
