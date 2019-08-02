package entity;

/**
 * Reading entity. @author MyEclipse Persistence Tools
 */

public class Reading implements java.io.Serializable {

	// Fields

	private Integer rid;
	private String rtitle;
	private String ranswer;
	private String analysis;
	private Integer pointid;

	// Constructors

	/** default constructor */
	public Reading() {
	}

	/** minimal constructor */
	public Reading(String rtitle, String ranswer) {
		this.rtitle = rtitle;
		this.ranswer = ranswer;
	}

	/** full constructor */
	public Reading(String rtitle, String ranswer, String analysis,
			Integer pointid) {
		this.rtitle = rtitle;
		this.ranswer = ranswer;
		this.analysis = analysis;
		this.pointid = pointid;
	}

	// Property accessors

	public Integer getRid() {
		return this.rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public String getRtitle() {
		return this.rtitle;
	}

	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}

	public String getRanswer() {
		return this.ranswer;
	}

	public void setRanswer(String ranswer) {
		this.ranswer = ranswer;
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