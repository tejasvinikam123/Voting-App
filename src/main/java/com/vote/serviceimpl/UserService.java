package com.vote.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vote.model.User;
import com.vote.repository.UserRepository;


@Service
public class UserService {
	@Autowired
	UserRepository userrepo;

	public void savedata(User user) {
		userrepo.save(user);

	}


	public User updatevote(Integer userid, User u) {
		Optional<User> uu = userrepo.findById(userid);
		if (uu.isPresent()) {
			User n = uu.get();
			n.setCountvote(u.getCountvote());
			return userrepo.save(n);
		} else {
			System.out.println("user not available");
		}
		return null;

	}

	public void updateData(Integer userid, Integer vote) {
	
		Optional<User> uu = userrepo.findById(userid);
		if (uu.isPresent()) {
			User n = uu.get();
			n.setCountvote(vote);
			userrepo.save(n);
		}


	}

	public boolean checkLogin(String email, String password) {
       User userByEmail = userrepo.findByEmailid(email);
		if (userByEmail.getCountvote() == 0) {
			return false;
		} else {
			return true;
		}

	}

	public Iterable<User> getAllData() {
	
		Iterable<User> allUsers = userrepo.findAll();
		
		return allUsers;
		
	}

}
