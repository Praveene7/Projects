package org.niit.service;

import org.niit.dao.UserdetailsDAO;
import org.niit.model.Userdetails;
import org.niit.service.UsersDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;



@Service
public class UsersDetailServiceImpl implements UsersDetailService{

    @Autowired
    private UserdetailsDAO usersDetailDao;

	
	@Override
	public List<Userdetails> list() {
		return usersDetailDao.list();
	}

	@Override
	public Userdetails getUserByUsername(String username) {
		return usersDetailDao.getUserByUsername(username);
	}

	@Override
	public Userdetails get(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

    /*public void addUser (UsersDetail usersDetail) {
    	usersDetailDao.addUser(usersDetail);
    }

    public UsersDetail getUserById(int userId) {
        return usersDetailDao.getUserById(userId);
    }

    public List<UsersDetail> getAllUsers() {
        return usersDetailDao.getAllUsers();
    }

    public UsersDetail getUserByUsername (String username) {
        return usersDetailDao.getUserByUsername(username);
    }*/
}
