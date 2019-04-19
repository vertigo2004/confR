package edu.iful.confr.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@JsonInclude(JsonInclude.Include.NON_EMPTY)
public class Question {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    private User author;

    private String body;

    private Integer rate = 1;

    @Transient
    private boolean isLiked;

    @ManyToOne(fetch = FetchType.LAZY)
    @JsonIgnore
    private Topic topic;

    @ManyToMany(cascade = CascadeType.ALL)
    @JsonIgnore
    private Set<User> likes = new HashSet<>();

    public void like(User user) {
        if (!user.equals(author)) {
            likes.add(user);
            rate += 1;
        }
        isLikedBy(user);
    }

    public boolean isLikedBy(User user) {
        isLiked = author.equals(user) || likes.contains(user);
        return isLiked;
    }
}
