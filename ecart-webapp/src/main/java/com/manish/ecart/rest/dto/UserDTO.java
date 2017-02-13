package com.manish.ecart.rest.dto;

import java.io.Serializable;
import com.manish.ecart.model.User;
import javax.persistence.EntityManager;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class UserDTO implements Serializable {

	private Long id;
	private int version;
	private String userName;
	private String userPassword;

	public UserDTO() {
	}

	public UserDTO(final User entity) {
		if (entity != null) {
			this.id = entity.getId();
			this.version = entity.getVersion();
			this.userName = entity.getUserName();
			this.userPassword = entity.getUserPassword();
		}
	}

	public User fromDTO(User entity, EntityManager em) {
		if (entity == null) {
			entity = new User();
		}
		entity.setVersion(this.version);
		entity.setUserName(this.userName);
		entity.setUserPassword(this.userPassword);
		entity = em.merge(entity);
		return entity;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(final Long id) {
		this.id = id;
	}

	public int getVersion() {
		return this.version;
	}

	public void setVersion(final int version) {
		this.version = version;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(final String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(final String userPassword) {
		this.userPassword = userPassword;
	}
}