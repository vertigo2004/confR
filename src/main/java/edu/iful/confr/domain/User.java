package edu.iful.confr.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class User {

    @Id
    @Column(length = 50)
    private String email;
    private String nickname;
}
