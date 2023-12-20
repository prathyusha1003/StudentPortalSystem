package org.jsp.StudentPortal.Dto;

import java.time.LocalDate;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class Faculty
{
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
	String subject;
	int otp;
}
