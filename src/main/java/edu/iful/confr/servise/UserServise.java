package edu.iful.confr.servise;

import edu.iful.confr.domain.User;
import edu.iful.confr.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class UserServise {

    @Autowired
    private UserRepository userRepository;

    public User getByEmail(String email) {

        return userRepository
                .findById(email)
                .orElseThrow(
                        () -> new NotExistedUserException(email));
    }

    public List<User> getAll() {

        return userRepository.findAll();
    }

    public User createUser(User user) {
        if (isExist(user.getEmail())) {
            throw new DuplicatedUserException(user.getEmail());
        }
        if (StringUtils.isEmpty(StringUtils.trimWhitespace(user.getNickname()))) {
            int at = user.getEmail().indexOf("@");
            user.setNickname(user.getEmail().substring(0, at));
        }

        return userRepository.save(user);
    }

    public boolean isExist(String email) {

        return userRepository.findById(email).isPresent();
    }
}
