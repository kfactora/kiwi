package com.codingdojo.kiwi.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.kiwi.models.Deposit;
import com.codingdojo.kiwi.repositories.DepositRepository;


@Service
public class DepositService {
	private DepositRepository depositRepository;
	
	public DepositService(DepositRepository depositRepository) {
		this.depositRepository = depositRepository; 
	}
	
	// Find All
	public List<Deposit> getAll(){
		return this.depositRepository.findAll();
	}
	
	// Find Deposit By Id
	public Deposit findDepositById(Long id) {
    	Optional<Deposit> d = depositRepository.findById(id);
    	
    	if(d.isPresent()) {
            return d.get();
    	} else {
    	    return null;
    	}
    }
	
	// New Deposit
	public Deposit newDeposit(Deposit deposit) {
		return depositRepository.save(deposit);
	}
	
	// Delete Deposit
	public void deleteDeposit(Long id) {
		this.depositRepository.deleteById(id);
	}
	
	// Edit Deposit
	public Deposit editDeposit(Long id) {
		Optional<Deposit> original = depositRepository.findById(id);
		if(original.isPresent()) {
            return original.get();
    	} else {
    	    return null;
    	}
	}
	
	// Update Deposit
	public Deposit updateDeposit(Long id, String description, double amount) {
		Deposit d1 = findDepositById(id);
		d1.setDescription(description);
		d1.setAmount(amount);
		return depositRepository.save(d1);
	}
}
