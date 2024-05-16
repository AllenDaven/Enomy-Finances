package com.enomyfinances.service;

import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.enomyfinances.model.User;
import com.enomyfinances.repository.RoleRepository;
import com.enomyfinances.repository.UserRepository;

@Service
@Transactional
public class UserService {
	
	@Autowired
	UserRepository repo;

	@Autowired
    private RoleRepository roleRepository;
	
	public void save(User user) {		
		System.out.println("----------------------------------"+ roleRepository.findAll());
		
		System.out.println("Before Set user role "+ roleRepository.findBySpecificRoles("User"));
		
		user.setRoles(new HashSet<>(roleRepository.findBySpecificRoles("User")));
		
		System.out.println("This user has been identified as 'User' Role in database");
		System.out.println("After set user role" + user.getRoles().toString());
		
        repo.save(user);	
	}

	public List<User> listAll() {
		return (List<User>) repo.findAll();
	}

	public User get(Long id) {
		return repo.findById(id).get();
	}

	public void delete(Long id) {
		repo.deleteById(id);
	}
		
}


