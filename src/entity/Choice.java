package entity;

/**
 * Choice entity. @author MyEclipse Persistence Tools
 */

public class Choice implements java.io.Serializable {

	// Fields

	private Integer cid;
	private String ctitle;
	private String a;
	private String b;
	private String c;
	private String d;
	private String canswer;
	private String analysis;
	private Integer pointid;

	// Constructors

	/** default constructor */
	public Choice() {
	}

	/** minimal constructor */
	public Choice(String ctitle, String a, String b, String c, String d,
			String canswer) {
		this.ctitle = ctitle;
		this.a = a;
		this.b = b;
		this.c = c;
		this.d = d;
		this.canswer = canswer;
	}

	/** full constructor */
	public Choice(String ctitle, String a, String b, String c, String d,
			String canswer, String analysis, Integer pointid) {
		this.ctitle = ctitle;
		this.a = a;
		this.b = b;
		this.c = c;
		this.d = d;
		this.canswer = canswer;
		this.analysis = analysis;
		this.pointid = pointid;
	}

	// Property accessors

	public Integer getCid() {
		return this.cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getCtitle() {
		return this.ctitle;
	}

	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}

	public String getA() {
		return this.a;
	}

	public void setA(String a) {
		this.a = a;
	}

	public String getB() {
		return this.b;
	}

	public void setB(String b) {
		this.b = b;
	}

	public String getC() {
		return this.c;
	}

	public void setC(String c) {
		this.c = c;
	}

	public String getD() {
		return this.d;
	}

	public void setD(String d) {
		this.d = d;
	}

	public String getCanswer() {
		return this.canswer;
	}

	public void setCanswer(String canswer) {
		this.canswer = canswer;
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