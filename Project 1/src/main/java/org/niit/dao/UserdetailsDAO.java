package org.niit.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import org.niit.model.Userdetails;

@Repository
public interface UserdetailsDAO {
	
	public boolean save(Userdetails userdetails);
	
	public boolean update(Userdetails userdetails);
		
		public boolean delete(Userdetails userdetails);
				
		public List<Userdetails> list();
				
		public boolean isValidUser(String username, String password);

		public Userdetails get(String userid);
		
	    Userdetails getUserByUsername (String username);

	
			

}
