package com.ilifeeasy.entity.answer;

import java.sql.Timestamp;
import com.ilifeeasy.entity.common.DataEntity;

/**
 * 试题名称
 * @author xiangxiaowen
 *
 */
public class ExamDetail extends DataEntity<ExamDetail>{

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -9021660171637000659L;
	
	private String id;
	
	private String titleId;
	
	private String optionType;
	
	private String content;
	
	private int score;
	
	private String answer;
	
	private String resolve;
	
	private String optionA;
	
	private String optionB;
	
	private String optionC;
	
	private String optionD;
	
	private String optionE;
	
	private int dr;
	
	private Timestamp ts;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitleId() {
		return titleId;
	}

	public void setTitleId(String titleId) {
		this.titleId = titleId;
	}

	public String getOptionType() {
		return optionType;
	}

	public void setOptionType(String optionType) {
		this.optionType = optionType;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getResolve() {
		return resolve;
	}

	public void setResolve(String resolve) {
		this.resolve = resolve;
	}

	public String getOptionA() {
		return optionA;
	}

	public void setOptionA(String optionA) {
		this.optionA = optionA;
	}

	public String getOptionB() {
		return optionB;
	}

	public void setOptionB(String optionB) {
		this.optionB = optionB;
	}

	public String getOptionC() {
		return optionC;
	}

	public void setOptionC(String optionC) {
		this.optionC = optionC;
	}

	public String getOptionD() {
		return optionD;
	}

	public void setOptionD(String optionD) {
		this.optionD = optionD;
	}

	public String getOptionE() {
		return optionE;
	}

	public void setOptionE(String optionE) {
		this.optionE = optionE;
	}

	public int getDr() {
		return dr;
	}

	public void setDr(int dr) {
		this.dr = dr;
	}

	public Timestamp getTs() {
		return ts;
	}

	public void setTs(Timestamp ts) {
		this.ts = ts;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "ExamDetail [id=" + id + ", titleId=" + titleId
				+ ", optionType=" + optionType + ", content=" + content
				+ ", score=" + score + ", answer=" + answer + ", resolve="
				+ resolve + ", optionA=" + optionA + ", optionB=" + optionB
				+ ", optionC=" + optionC + ", optionD=" + optionD
				+ ", optionE=" + optionE + ", dr=" + dr + ", ts=" + ts + "]";
	}
}
