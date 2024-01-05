package org.jsp.StudentPortal.Dto;

import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.Data;

@Data
@Entity
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	String name;
	String email;
	long mobile;
	LocalDate dob;
	String password;
	String gender;
	String address;
	String course;
	int otp;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	List<Attendence> attendence;
}
