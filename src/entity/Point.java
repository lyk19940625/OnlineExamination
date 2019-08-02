package entity;

/**
 * Point entity. @author MyEclipse Persistence Tools
 */

public class Point implements java.io.Serializable {

	// Fields

	private Integer pointid;
	private String point;
	private String pointname;
	private String centre;

	// Constructors

	/** default constructor */
	public Point() {
	}

	/** full constructor */
	public Point(String point, String pointname, String centre) {
		this.point = point;
		this.pointname = pointname;
		this.centre = centre;
	}

	// Property accessors

	public Integer getPointid() {
		return this.pointid;
	}

	public void setPointid(Integer pointid) {
		this.pointid = pointid;
	}

	public String getPoint() {
		return this.point;
	}

	public void setPoint(String point) {
		this.point = point;
	}

	public String getPointname() {
		return this.pointname;
	}

	public void setPointname(String pointname) {
		this.pointname = pointname;
	}

	public String getCentre() {
		return this.centre;
	}

	public void setCentre(String centre) {
		this.centre = centre;
	}

}