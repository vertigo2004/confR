package edu.iful.confr.rest;

import edu.iful.confr.dto.QuestionDto;
import edu.iful.confr.servise.QuestionService;
import edu.iful.confr.servise.UserServise;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("question")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private UserServise userServise;

    @GetMapping("{id}")
    public QuestionDto getOne(@PathVariable Long id) {

        return questionService.getOne(id);
    }

    @GetMapping("all")
    public List<QuestionDto> getAll() {

        return questionService.getAll();
    }

    @GetMapping("check-liked/{email}")
    public List<QuestionDto> getAll4User(@PathVariable String email) {

        return questionService.getAll4User(userServise.getByEmail(email));
    }

    @PutMapping("{id}/like")
    public QuestionDto like(@PathVariable Long id,
                            @RequestBody String email) {

        return questionService.like(id, userServise.getByEmail(email));
    }
}
