package mri.project.service;

import mri.project.domain.PatientInfo;

public interface PatientInfoService {
	
	public PatientInfo getPatientInfoByID(int id);
	
	public PatientInfo getPatientInfoByName(String name);
	
	public boolean UpdatePatientInfo(PatientInfo pf);
	
	public boolean addPatientInfo(PatientInfo pf);
	
	public boolean deletePatientInfo();
}
