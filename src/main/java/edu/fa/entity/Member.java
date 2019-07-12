package edu.fa.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table(name = "member")
public class Member {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MemberId")
	private long Id;
	
	@Column(name = "Firstname")
	private String firstName;
	
	@Column(name = "Lastname")
	private String lastName;
	
	@Column(name = "Passwords")
	private String password;
	
	@Column(name = "Username")
	private String userName;
	
	@Column(name = "Email")
	private String email;
	
	@Column(name = "Phone")
	private String phone;
	
	@Column(name = "Description")
	private String description;
	
	@Column(name = "CreateDate")
	private String createDate;
	
	@Column(name = "UpdateTime")
	private String updateTime;
	
	@Column(name = "RoleId")
	private String roleId;
	
	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public long getId() {
		return Id;
	}

	public void setId(long id) {
		Id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	public Member(long id, String firstName, String lastName, String password, String userName, String email,
			String phone, String description, String createDate, String updateTime, String roleId) {
		super();
		Id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.password = password;
		this.userName = userName;
		this.email = email;
		this.phone = phone;
		this.description = description;
		this.createDate = createDate;
		this.updateTime = updateTime;
		this.roleId = roleId;
	}

	public Member() {
		super();
	}
	
	
}
