package com.codingdojo.kiwi.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.kiwi.models.Deposit;

public interface DepositRepository extends CrudRepository<Deposit, Long>{

	List<Deposit> findAll();
	
	Optional<Deposit> findById(Long id);

}
