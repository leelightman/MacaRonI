package com.mri.service.Impl;

import java.util.List;
import com.mri.dao.Impl.IPatientDAO;
import com.mri.vo.Patient;
public class PatientService implements IPatientService{
	private IPatientDAO patientDAO = null;
	
	public IPatientDAO getPatientDAO(){
		return patientDAO;
	}
	public void setPatientDAO(IPatientDAO patientDAO){
		this.patientDAO = patientDAO;
	}
	public List<Patient> findAllPatient(){
		return patientDAO.findAllPatient();
	}
	/**public boolean addNewPatient(Patient p){
		return patientDAO.addNewPatient(p);
	}**/
	public List<Patient> addNewPatient(Patient p){
		return patientDAO.addNewPatient(p);
	}
	/*public boolean deletePatient(Integer id){
		return patientDAO.deletePatient(id);
	}*/
	public List<Patient> deletePatient(Integer id){
		return patientDAO.deletePatient(id);
	}
	public List<Patient> getPatientByName(String name){
		return patientDAO.getPatientByName(name);
	}
	public List<Patient> getPatientByMRN(String mrn){
		return patientDAO.getPatientByMRN(mrn);
	}
	public List<Patient> getPatient(String tst){
		return patientDAO.getPatient(tst);
	}
	public List<Patient> getPatientByID(Integer id){
		return patientDAO.getPatientByID(id);
	}
}
