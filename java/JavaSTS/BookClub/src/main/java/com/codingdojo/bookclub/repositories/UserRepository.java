package com.codingdojo.bookclub.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.bookclub.models.User;

@Repository //technically not needed
public interface UserRepository extends CrudRepository<User, Long>{
	Optional<User> findByEmail(String email);
	// Optional - If no User won't throw an error for lack of data
	// Finds Book club user via Email to create repository
	
	// SENSEI BONUS FOR NAME CHECK
	Optional<User> findByName(String name);
}
