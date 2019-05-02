package edu.iful.confr.servise;

import edu.iful.confr.domain.Question;
import edu.iful.confr.domain.Topic;
import edu.iful.confr.domain.User;
import edu.iful.confr.dto.QuestionDto;
import edu.iful.confr.repository.QuestionRepository;
import edu.iful.confr.repository.TopicRepository;
import edu.iful.confr.repository.UserRepository;
import edu.iful.confr.servise.exception.NotExistedTopicException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class QuestionService implements IQuestionService {

    @Autowired
    private QuestionRepository questionRepository;

    @Autowired
    private TopicRepository topicRepository;

    public QuestionDto getOne(Long id) {

        return QuestionMapper.toDto(questionRepository.findById(id).get());
    }

    public List<QuestionDto> getAll() {

        return QuestionMapper.toDto(questionRepository.findAll());
    }

    public List<QuestionDto> getAll4User(User user) {

        List<Question> all = questionRepository.findAll();

        return all.stream().map(q -> {
            QuestionDto dto = QuestionMapper.toDto(q);
            dto.setLiked(q.isLikedBy(user));
            return dto;
        }).collect(Collectors.toList());
    }

    public List<QuestionDto> getAllByTopic4User(Long topicId, User user) {
        Topic t = topicRepository.findById(topicId).orElseThrow(
                () -> new NotExistedTopicException(topicId));
        List<Question> all = questionRepository.findByTopic(t);

        return all.stream().map(q -> {
            QuestionDto dto = QuestionMapper.toDto(q);
            dto.setLiked(q.isLikedBy(user));
            return dto;
        }).collect(Collectors.toList());
    }

    public QuestionDto create(QuestionDto dto) {

        Question question = QuestionMapper.toEntity(dto);
        question.like(question.getAuthor());

        return QuestionMapper.toDto(questionRepository.save(question));
    }

    public QuestionDto like(Long questionId, User user) {

        Question question = questionRepository.getOne(questionId);
        question.like(user);

        return QuestionMapper.toDto(questionRepository.save(question));
    }
}
