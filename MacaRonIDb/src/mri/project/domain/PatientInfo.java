package mri.project.domain;

import java.io.Serializable;  
import java.util.Date;

public class PatientInfo implements Serializable {
	
	private static final long serialVersionUID = 5859047421123976587L;
	
	private Integer MRNumber;
	private String Pname;
	private int PAge;
	private String PGender;
	private String NorD;
	public Integer getMRNumber() {
		return MRNumber;
	}
	public void setMRNumber(Integer mRNumber) {
		MRNumber = mRNumber;
	}
	public String getPname() {
		return Pname;
	}
	public void setPname(String pname) {
		Pname = pname;
	}
	public int getPAge() {
		return PAge;
	}
	public void setPAge(int pAge) {
		PAge = pAge;
	}
	public String getPGender() {
		return PGender;
	}
	public void setPGender(String pGender) {
		PGender = pGender;
	}
	public String getNorD() {
		return NorD;
	}
	public void setNorD(String norD) {
		NorD = norD;
	}
}
