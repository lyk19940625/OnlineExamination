package entity;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer uid;
	private String account;
	private String password;
	private String uname;
	private String usex;
	private String uclass;
	private String utype;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(String account, String password, String uname, String usex,
			String uclass, String utype) {
		this.account = account;
		this.password = password;
		this.uname = uname;
		this.usex = usex;
		this.uclass = uclass;
		this.utype = utype;
	}

	// Property accessors

	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getAccount() {
		return this.account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUsex() {
		return this.usex;
	}

	public void setUsex(String usex) {
		this.usex = usex;
	}

	public String getUclass() {
		return this.uclass;
	}

	public void setUclass(String uclass) {
		this.uclass = uclass;
	}

	public String getUtype() {
		return this.utype;
	}

	public void setUtype(String utype) {
		this.utype = utype;
	}

}