package edu.iful.confr.repository;

import edu.iful.confr.domain.Topic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TopicRepository extends JpaRepository<Topic, Long> {

    List<Topic> findBySpeaker(String speaker);

    List<Topic> findBySpeakerOrderByRateDesc(String speaker);

    List<Topic> findAllByOrderBySpeakerAsc();

    List<Topic> findByNameContainingIgnoreCase(String name);

    int countBySpeaker(String speaker);

}