package webapp7.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="users")
public class Users{
	@Id
	@Column(name="username")
	private String username;
	
	@Column(name="password")
	private String password;
	
	
	@OneToMany(fetch=FetchType.EAGER, mappedBy="users",
			cascade= {CascadeType.ALL})
	private List<Data> data;
	
	
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
	public List<Data> getData() {
		return data;
	}
	public void setData(List<Data> data) {
		this.data = data;
	}

	
	
}
