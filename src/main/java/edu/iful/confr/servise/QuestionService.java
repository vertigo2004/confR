package edu.iful.confr.servise;

import edu.iful.confr.domain.Question;
import edu.iful.confr.domain.User;
import edu.iful.confr.repository.QuestionRepository;
import edu.iful.confr.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionService {

    @Autowired
    private QuestionRepository questionRepository;
    @Autowired
    private UserRepository userRepository;

    public Question getOne(Long id) {

        return questionRepository.findById(id).get();
    }

    public List<Question> getAll() {

        return questionRepository.findAll();
    }

    public List<Question> getAll4User(User user) {

        List<Question> all = questionRepository.findAll();
        all.forEach(q -> q.isLikedBy(user));

        return all;
    }

    public Question create(Question question) {

        question.like(question.getAuthor());

        return questionRepository.save(question);
    }

    public Question like(Long questionId, User user) {

        Question question = questionRepository.getOne(questionId);
        question.like(user);

        return questionRepository.save(question);
    }
}
