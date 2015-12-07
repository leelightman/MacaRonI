package com.mri.dao.Impl;

import java.util.List;
import com.mri.vo.Patient;
public interface IPatientDAO {
	
	public List<Patient> findAllPatient();
	public List<Patient> addNewPatient(Patient p);
//	public boolean addNewPatient(Patient p);
//	public boolean deletePatient(Integer id);
	public List<Patient> deletePatient(Integer id);
	public List<Patient> getPatientByName(String name);
	public List<Patient> getPatientByMRN(String mrn);
	public List<Patient> getPatient(String tst);
	public List<Patient> getPatientByID(Integer id);
	
}
