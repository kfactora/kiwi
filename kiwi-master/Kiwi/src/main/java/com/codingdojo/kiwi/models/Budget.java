package com.codingdojo.kiwi.models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name="budgets")
public class Budget {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Column
	@Size(min=1, message="You must enter a name!")
	private String categoryName;
	
	@Column 
	private double budgetAmount;
	
	// Relationships
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinTable(name="account_id")
	private Account account;
	
	@OneToMany(mappedBy="budget", fetch=FetchType.LAZY)
	private List<Spending> spendings;
	
	public Budget() {}
	
	// Getters and Setters
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public double getBudgetAmount() {
		return budgetAmount;
	}

	public void setBudgetAmount(double budgetAmount) {
		this.budgetAmount = budgetAmount;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public List<Spending> getSpendings() {
		return spendings;
	}

	public void setSpendings(List<Spending> spendings) {
		this.spendings = spendings;
	}
}
