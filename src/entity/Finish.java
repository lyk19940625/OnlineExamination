package entity;

/**
 * Finish entity. @author MyEclipse Persistence Tools
 */

public class Finish implements java.io.Serializable {

	// Fields

	private Integer finishid;
	private String examtitle;
	private String eteacher;
	private String uname;
	private String choicetitle1;
	private String choicetitle2;
	private String choicetitle3;
	private String choicetitle4;
	private String choicetitle5;
	private String blanktitle1;
	private String blanktitle2;
	private String blanktitle3;
	private String readingtitle1;
	private String readingtitle2;
	private String choicea1;
	private String choiceb1;
	private String choicec1;
	private String choiced1;
	private String choicea2;
	private String choiceb2;
	private String choicec2;
	private String choiced2;
	private String choicea3;
	private String choiceb3;
	private String choicec3;
	private String choiced3;
	private String choicea4;
	private String choiceb4;
	private String choicec4;
	private String choiced4;
	private String choicea5;
	private String choiceb5;
	private String choicec5;
	private String choiced5;
	private String answer1;
	private String answer2;
	private String answer3;
	private String answer4;
	private String answer5;
	private String answer6;
	private String answer7;
	private String answer8;
	private String answer9;
	private String answer10;
	private String myanswer1;
	private String myanswer2;
	private String myanswer3;
	private String myanswer4;
	private String myanswer5;
	private String myanswer6;
	private String myanswer7;
	private String myanswer8;
	private String myanswer9;
	private String myanswer10;
	private String score1;
	private String score2;
	private String score3;
	private String score4;
	private String score5;
	private String score6;
	private String score7;
	private String score8;
	private String score9;
	private String score10;
	private String totalscore;
	private String state;

	// Constructors

	/** default constructor */
	public Finish() {
	}

	/** full constructor */
	public Finish(String examtitle, String eteacher, String uname,
			String choicetitle1, String choicetitle2, String choicetitle3,
			String choicetitle4, String choicetitle5, String blanktitle1,
			String blanktitle2, String blanktitle3, String readingtitle1,
			String readingtitle2, String choicea1, String choiceb1,
			String choicec1, String choiced1, String choicea2, String choiceb2,
			String choicec2, String choiced2, String choicea3, String choiceb3,
			String choicec3, String choiced3, String choicea4, String choiceb4,
			String choicec4, String choiced4, String choicea5, String choiceb5,
			String choicec5, String choiced5, String answer1, String answer2,
			String answer3, String answer4, String answer5, String answer6,
			String answer7, String answer8, String answer9, String answer10,
			String myanswer1, String myanswer2, String myanswer3,
			String myanswer4, String myanswer5, String myanswer6,
			String myanswer7, String myanswer8, String myanswer9,
			String myanswer10, String score1, String score2, String score3,
			String score4, String score5, String score6, String score7,
			String score8, String score9, String score10, String totalscore,
			String state) {
		this.examtitle = examtitle;
		this.eteacher = eteacher;
		this.uname = uname;
		this.choicetitle1 = choicetitle1;
		this.choicetitle2 = choicetitle2;
		this.choicetitle3 = choicetitle3;
		this.choicetitle4 = choicetitle4;
		this.choicetitle5 = choicetitle5;
		this.blanktitle1 = blanktitle1;
		this.blanktitle2 = blanktitle2;
		this.blanktitle3 = blanktitle3;
		this.readingtitle1 = readingtitle1;
		this.readingtitle2 = readingtitle2;
		this.choicea1 = choicea1;
		this.choiceb1 = choiceb1;
		this.choicec1 = choicec1;
		this.choiced1 = choiced1;
		this.choicea2 = choicea2;
		this.choiceb2 = choiceb2;
		this.choicec2 = choicec2;
		this.choiced2 = choiced2;
		this.choicea3 = choicea3;
		this.choiceb3 = choiceb3;
		this.choicec3 = choicec3;
		this.choiced3 = choiced3;
		this.choicea4 = choicea4;
		this.choiceb4 = choiceb4;
		this.choicec4 = choicec4;
		this.choiced4 = choiced4;
		this.choicea5 = choicea5;
		this.choiceb5 = choiceb5;
		this.choicec5 = choicec5;
		this.choiced5 = choiced5;
		this.answer1 = answer1;
		this.answer2 = answer2;
		this.answer3 = answer3;
		this.answer4 = answer4;
		this.answer5 = answer5;
		this.answer6 = answer6;
		this.answer7 = answer7;
		this.answer8 = answer8;
		this.answer9 = answer9;
		this.answer10 = answer10;
		this.myanswer1 = myanswer1;
		this.myanswer2 = myanswer2;
		this.myanswer3 = myanswer3;
		this.myanswer4 = myanswer4;
		this.myanswer5 = myanswer5;
		this.myanswer6 = myanswer6;
		this.myanswer7 = myanswer7;
		this.myanswer8 = myanswer8;
		this.myanswer9 = myanswer9;
		this.myanswer10 = myanswer10;
		this.score1 = score1;
		this.score2 = score2;
		this.score3 = score3;
		this.score4 = score4;
		this.score5 = score5;
		this.score6 = score6;
		this.score7 = score7;
		this.score8 = score8;
		this.score9 = score9;
		this.score10 = score10;
		this.totalscore = totalscore;
		this.state = state;
	}

	// Property accessors

	public Integer getFinishid() {
		return this.finishid;
	}

	public void setFinishid(Integer finishid) {
		this.finishid = finishid;
	}

	public String getExamtitle() {
		return this.examtitle;
	}

	public void setExamtitle(String examtitle) {
		this.examtitle = examtitle;
	}

	public String getEteacher() {
		return this.eteacher;
	}

	public void setEteacher(String eteacher) {
		this.eteacher = eteacher;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getChoicetitle1() {
		return this.choicetitle1;
	}

	public void setChoicetitle1(String choicetitle1) {
		this.choicetitle1 = choicetitle1;
	}

	public String getChoicetitle2() {
		return this.choicetitle2;
	}

	public void setChoicetitle2(String choicetitle2) {
		this.choicetitle2 = choicetitle2;
	}

	public String getChoicetitle3() {
		return this.choicetitle3;
	}

	public void setChoicetitle3(String choicetitle3) {
		this.choicetitle3 = choicetitle3;
	}

	public String getChoicetitle4() {
		return this.choicetitle4;
	}

	public void setChoicetitle4(String choicetitle4) {
		this.choicetitle4 = choicetitle4;
	}

	public String getChoicetitle5() {
		return this.choicetitle5;
	}

	public void setChoicetitle5(String choicetitle5) {
		this.choicetitle5 = choicetitle5;
	}

	public String getBlanktitle1() {
		return this.blanktitle1;
	}

	public void setBlanktitle1(String blanktitle1) {
		this.blanktitle1 = blanktitle1;
	}

	public String getBlanktitle2() {
		return this.blanktitle2;
	}

	public void setBlanktitle2(String blanktitle2) {
		this.blanktitle2 = blanktitle2;
	}

	public String getBlanktitle3() {
		return this.blanktitle3;
	}

	public void setBlanktitle3(String blanktitle3) {
		this.blanktitle3 = blanktitle3;
	}

	public String getReadingtitle1() {
		return this.readingtitle1;
	}

	public void setReadingtitle1(String readingtitle1) {
		this.readingtitle1 = readingtitle1;
	}

	public String getReadingtitle2() {
		return this.readingtitle2;
	}

	public void setReadingtitle2(String readingtitle2) {
		this.readingtitle2 = readingtitle2;
	}

	public String getChoicea1() {
		return this.choicea1;
	}

	public void setChoicea1(String choicea1) {
		this.choicea1 = choicea1;
	}

	public String getChoiceb1() {
		return this.choiceb1;
	}

	public void setChoiceb1(String choiceb1) {
		this.choiceb1 = choiceb1;
	}

	public String getChoicec1() {
		return this.choicec1;
	}

	public void setChoicec1(String choicec1) {
		this.choicec1 = choicec1;
	}

	public String getChoiced1() {
		return this.choiced1;
	}

	public void setChoiced1(String choiced1) {
		this.choiced1 = choiced1;
	}

	public String getChoicea2() {
		return this.choicea2;
	}

	public void setChoicea2(String choicea2) {
		this.choicea2 = choicea2;
	}

	public String getChoiceb2() {
		return this.choiceb2;
	}

	public void setChoiceb2(String choiceb2) {
		this.choiceb2 = choiceb2;
	}

	public String getChoicec2() {
		return this.choicec2;
	}

	public void setChoicec2(String choicec2) {
		this.choicec2 = choicec2;
	}

	public String getChoiced2() {
		return this.choiced2;
	}

	public void setChoiced2(String choiced2) {
		this.choiced2 = choiced2;
	}

	public String getChoicea3() {
		return this.choicea3;
	}

	public void setChoicea3(String choicea3) {
		this.choicea3 = choicea3;
	}

	public String getChoiceb3() {
		return this.choiceb3;
	}

	public void setChoiceb3(String choiceb3) {
		this.choiceb3 = choiceb3;
	}

	public String getChoicec3() {
		return this.choicec3;
	}

	public void setChoicec3(String choicec3) {
		this.choicec3 = choicec3;
	}

	public String getChoiced3() {
		return this.choiced3;
	}

	public void setChoiced3(String choiced3) {
		this.choiced3 = choiced3;
	}

	public String getChoicea4() {
		return this.choicea4;
	}

	public void setChoicea4(String choicea4) {
		this.choicea4 = choicea4;
	}

	public String getChoiceb4() {
		return this.choiceb4;
	}

	public void setChoiceb4(String choiceb4) {
		this.choiceb4 = choiceb4;
	}

	public String getChoicec4() {
		return this.choicec4;
	}

	public void setChoicec4(String choicec4) {
		this.choicec4 = choicec4;
	}

	public String getChoiced4() {
		return this.choiced4;
	}

	public void setChoiced4(String choiced4) {
		this.choiced4 = choiced4;
	}

	public String getChoicea5() {
		return this.choicea5;
	}

	public void setChoicea5(String choicea5) {
		this.choicea5 = choicea5;
	}

	public String getChoiceb5() {
		return this.choiceb5;
	}

	public void setChoiceb5(String choiceb5) {
		this.choiceb5 = choiceb5;
	}

	public String getChoicec5() {
		return this.choicec5;
	}

	public void setChoicec5(String choicec5) {
		this.choicec5 = choicec5;
	}

	public String getChoiced5() {
		return this.choiced5;
	}

	public void setChoiced5(String choiced5) {
		this.choiced5 = choiced5;
	}

	public String getAnswer1() {
		return this.answer1;
	}

	public void setAnswer1(String answer1) {
		this.answer1 = answer1;
	}

	public String getAnswer2() {
		return this.answer2;
	}

	public void setAnswer2(String answer2) {
		this.answer2 = answer2;
	}

	public String getAnswer3() {
		return this.answer3;
	}

	public void setAnswer3(String answer3) {
		this.answer3 = answer3;
	}

	public String getAnswer4() {
		return this.answer4;
	}

	public void setAnswer4(String answer4) {
		this.answer4 = answer4;
	}

	public String getAnswer5() {
		return this.answer5;
	}

	public void setAnswer5(String answer5) {
		this.answer5 = answer5;
	}

	public String getAnswer6() {
		return this.answer6;
	}

	public void setAnswer6(String answer6) {
		this.answer6 = answer6;
	}

	public String getAnswer7() {
		return this.answer7;
	}

	public void setAnswer7(String answer7) {
		this.answer7 = answer7;
	}

	public String getAnswer8() {
		return this.answer8;
	}

	public void setAnswer8(String answer8) {
		this.answer8 = answer8;
	}

	public String getAnswer9() {
		return this.answer9;
	}

	public void setAnswer9(String answer9) {
		this.answer9 = answer9;
	}

	public String getAnswer10() {
		return this.answer10;
	}

	public void setAnswer10(String answer10) {
		this.answer10 = answer10;
	}

	public String getMyanswer1() {
		return this.myanswer1;
	}

	public void setMyanswer1(String myanswer1) {
		this.myanswer1 = myanswer1;
	}

	public String getMyanswer2() {
		return this.myanswer2;
	}

	public void setMyanswer2(String myanswer2) {
		this.myanswer2 = myanswer2;
	}

	public String getMyanswer3() {
		return this.myanswer3;
	}

	public void setMyanswer3(String myanswer3) {
		this.myanswer3 = myanswer3;
	}

	public String getMyanswer4() {
		return this.myanswer4;
	}

	public void setMyanswer4(String myanswer4) {
		this.myanswer4 = myanswer4;
	}

	public String getMyanswer5() {
		return this.myanswer5;
	}

	public void setMyanswer5(String myanswer5) {
		this.myanswer5 = myanswer5;
	}

	public String getMyanswer6() {
		return this.myanswer6;
	}

	public void setMyanswer6(String myanswer6) {
		this.myanswer6 = myanswer6;
	}

	public String getMyanswer7() {
		return this.myanswer7;
	}

	public void setMyanswer7(String myanswer7) {
		this.myanswer7 = myanswer7;
	}

	public String getMyanswer8() {
		return this.myanswer8;
	}

	public void setMyanswer8(String myanswer8) {
		this.myanswer8 = myanswer8;
	}

	public String getMyanswer9() {
		return this.myanswer9;
	}

	public void setMyanswer9(String myanswer9) {
		this.myanswer9 = myanswer9;
	}

	public String getMyanswer10() {
		return this.myanswer10;
	}

	public void setMyanswer10(String myanswer10) {
		this.myanswer10 = myanswer10;
	}

	public String getScore1() {
		return this.score1;
	}

	public void setScore1(String score1) {
		this.score1 = score1;
	}

	public String getScore2() {
		return this.score2;
	}

	public void setScore2(String score2) {
		this.score2 = score2;
	}

	public String getScore3() {
		return this.score3;
	}

	public void setScore3(String score3) {
		this.score3 = score3;
	}

	public String getScore4() {
		return this.score4;
	}

	public void setScore4(String score4) {
		this.score4 = score4;
	}

	public String getScore5() {
		return this.score5;
	}

	public void setScore5(String score5) {
		this.score5 = score5;
	}

	public String getScore6() {
		return this.score6;
	}

	public void setScore6(String score6) {
		this.score6 = score6;
	}

	public String getScore7() {
		return this.score7;
	}

	public void setScore7(String score7) {
		this.score7 = score7;
	}

	public String getScore8() {
		return this.score8;
	}

	public void setScore8(String score8) {
		this.score8 = score8;
	}

	public String getScore9() {
		return this.score9;
	}

	public void setScore9(String score9) {
		this.score9 = score9;
	}

	public String getScore10() {
		return this.score10;
	}

	public void setScore10(String score10) {
		this.score10 = score10;
	}

	public String getTotalscore() {
		return this.totalscore;
	}

	public void setTotalscore(String totalscore) {
		this.totalscore = totalscore;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

}