package org.jsp.StudentPortal.Dao;

import java.util.List;

import org.jsp.StudentPortal.Dto.Faculty;
import org.jsp.StudentPortal.Repository.FacultyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FacultyDao 
{
	@Autowired
	FacultyRepository facultyRepository;

	public void save(Faculty faculty) 
	{
		facultyRepository.save(faculty);
	}

	public Faculty findByEmail(String email)
	{
		return facultyRepository.findByEmail(email);
	}

	public Faculty findByMobile(long mobile) 
	{
		return facultyRepository.findByMobile(mobile);
	}

	public Faculty findById(int id)
	{
		return facultyRepository.findById(id).orElse(null);
	}

	public List<Faculty> fetchAllDetails() 
	{
		return facultyRepository.findAll();
	}
}
