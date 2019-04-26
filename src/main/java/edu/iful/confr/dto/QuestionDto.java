package edu.iful.confr.dto;

import edu.iful.confr.domain.User;
import lombok.Data;

@Data
public class QuestionDto {

    private Long id;

    private User author;

    private String body;

    private Integer rate;

    private boolean isLiked;

    private Long topicId;
}
