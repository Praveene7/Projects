package org.niit.service;

import org.niit.model.Userdetails;

import java.util.List;

import org.niit.model.Userdetails;


public interface UsersDetailService {

		public List<Userdetails> list();
		Userdetails getUserByUsername (String username);
		public Userdetails get(String userid);
}
