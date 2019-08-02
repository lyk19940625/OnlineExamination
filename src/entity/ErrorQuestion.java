package entity;

/**
 * ErrorQuestion entity. @author MyEclipse Persistence Tools
 */

public class ErrorQuestion implements java.io.Serializable {

	// Fields

	private Integer errid;
	private String uname;
	private String ctitle;
	private String btitle;
	private String rtitle;
	private String choicea;
	private String choiceb;
	private String choicec;
	private String choiced;
	private String type;
	private String answer;

	// Constructors

	/** default constructor */
	public ErrorQuestion() {
	}

	/** full constructor */
	public ErrorQuestion(String uname, String ctitle, String btitle,
			String rtitle, String choicea, String choiceb, String choicec,
			String choiced, String type, String answer) {
		this.uname = uname;
		this.ctitle = ctitle;
		this.btitle = btitle;
		this.rtitle = rtitle;
		this.choicea = choicea;
		this.choiceb = choiceb;
		this.choicec = choicec;
		this.choiced = choiced;
		this.type = type;
		this.answer = answer;
	}

	// Property accessors

	public Integer getErrid() {
		return this.errid;
	}

	public void setErrid(Integer errid) {
		this.errid = errid;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getCtitle() {
		return this.ctitle;
	}

	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}

	public String getBtitle() {
		return this.btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getRtitle() {
		return this.rtitle;
	}

	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}

	public String getChoicea() {
		return this.choicea;
	}

	public void setChoicea(String choicea) {
		this.choicea = choicea;
	}

	public String getChoiceb() {
		return this.choiceb;
	}

	public void setChoiceb(String choiceb) {
		this.choiceb = choiceb;
	}

	public String getChoicec() {
		return this.choicec;
	}

	public void setChoicec(String choicec) {
		this.choicec = choicec;
	}

	public String getChoiced() {
		return this.choiced;
	}

	public void setChoiced(String choiced) {
		this.choiced = choiced;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAnswer() {
		return this.answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

}