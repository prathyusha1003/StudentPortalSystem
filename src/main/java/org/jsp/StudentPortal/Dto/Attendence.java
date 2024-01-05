package org.jsp.StudentPortal.Dto;

import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Attendence {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	LocalDate date;
	List<String> presentSubjects;	
	List<String> absentSubjects;
	
}
