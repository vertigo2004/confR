package edu.iful.confr.repository;

import edu.iful.confr.domain.Topic;
import edu.iful.confr.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TopicRepository extends JpaRepository<Topic, Long> {

    List<Topic> findBySpeaker(String speaker);

    List<Topic> findByNameContainingIgnoreCase(String name);

    List<Topic> findByRate(User user);

    List<Topic> findAllByOrderBySpeakerAsc();

    int countBySpeaker(String speaker);

}