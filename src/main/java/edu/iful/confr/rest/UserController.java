package edu.iful.confr.rest;

import edu.iful.confr.domain.User;
import edu.iful.confr.servise.UserServise;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserServise userServise;

    @GetMapping("all")
    public List<User> getAllUsers() {
        return userServise.getAll();
    }

    @GetMapping("{email}")
    public User getByEmail(@PathVariable String email) {
        return userServise.getByEmail(email);
    }

    @GetMapping("{email}/exists")
    public boolean isExistusers(@PathVariable String email) {
        return userServise.isExist(email);
    }

    @PostMapping
    public User createUser(@RequestBody User user) {
        return userServise.createUser(user);
    }
}
