package com.vote.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class User {
@Id
private int userid;
private String username;
private String password;
private String emailid;
private long phoneno;
private int countvote;
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmailid() {
	return emailid;
}
public void setEmailid(String emailid) {
	this.emailid = emailid;
}
public long getPhoneno() {
	return phoneno;
}
public void setPhoneno(long phoneno) {
	this.phoneno = phoneno;
}
public int getCountvote() {
	return countvote;
}
public void setCountvote(int countvote) {
	this.countvote = countvote;
}
}
