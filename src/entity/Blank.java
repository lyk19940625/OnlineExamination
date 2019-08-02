package entity;

/**
 * Blank entity. @author MyEclipse Persistence Tools
 */

public class Blank implements java.io.Serializable {

	// Fields

	private Integer bid;
	private String btitle;
	private String banswer;
	private String analysis;
	private Integer pointid;

	// Constructors

	/** default constructor */
	public Blank() {
	}

	/** minimal constructor */
	public Blank(String btitle, String banswer) {
		this.btitle = btitle;
		this.banswer = banswer;
	}

	/** full constructor */
	public Blank(String btitle, String banswer, String analysis, Integer pointid) {
		this.btitle = btitle;
		this.banswer = banswer;
		this.analysis = analysis;
		this.pointid = pointid;
	}

	// Property accessors

	public Integer getBid() {
		return this.bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
	}

	public String getBtitle() {
		return this.btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBanswer() {
		return this.banswer;
	}

	public void setBanswer(String banswer) {
		this.banswer = banswer;
	}

	public String getAnalysis() {
		return this.analysis;
	}

	public void setAnalysis(String analysis) {
		this.analysis = analysis;
	}

	public Integer getPointid() {
		return this.pointid;
	}

	public void setPointid(Integer pointid) {
		this.pointid = pointid;
	}

}