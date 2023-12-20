package org.jsp.StudentPortal.Repository;

import org.jsp.StudentPortal.Dto.Faculty;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FacultyRepository extends JpaRepository<Faculty, Integer>
{
	Faculty findByEmail(String email);

	Faculty findByMobile(long mobile);
}
