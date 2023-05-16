package com.vote.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.vote.model.User;
@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
	public User findByEmailid(String emailid);

}
