package edu.iful.confr.servise;

import edu.iful.confr.domain.User;
import edu.iful.confr.dto.QuestionDto;

import java.util.List;

public interface IQuestionService {

    QuestionDto getOne(Long id);

    List<QuestionDto> getAll();

    List<QuestionDto> getAll4User(User user);

    QuestionDto create(QuestionDto question);

    QuestionDto like(Long questionId, User user);

}
