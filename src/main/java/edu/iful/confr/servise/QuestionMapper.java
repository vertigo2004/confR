package edu.iful.confr.servise;

import edu.iful.confr.domain.Question;
import edu.iful.confr.domain.Topic;
import edu.iful.confr.dto.QuestionDto;
import lombok.experimental.UtilityClass;

import java.util.List;
import java.util.stream.Collectors;

@UtilityClass
public final class QuestionMapper {

    public QuestionDto toDto(Question question) {

        QuestionDto dto = new QuestionDto();
        dto.setId(question.getId());
        dto.setAuthor(question.getAuthor());
        dto.setBody(question.getBody());
        dto.setRate(question.getRate());
        dto.setTopicId(question.getTopic().getId());

        return dto;
    }

    public List<QuestionDto> toDto(List<Question> questions) {
        return questions.stream().map(QuestionMapper::toDto).collect(Collectors.toList());
    }

    public Question toEntity(QuestionDto dto) {

        Question question = new Question();
        question.setId(dto.getId());
        question.setAuthor(dto.getAuthor());
        question.setBody(dto.getBody());
        question.setTopic(new Topic());
        question.getTopic().setId(dto.getTopicId());
        if (dto.getRate() != null) {
            question.setRate(dto.getRate());
        }

        return question;
    }
}
