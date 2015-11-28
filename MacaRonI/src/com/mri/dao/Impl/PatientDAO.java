package com.mri.dao.Impl;

import java.util.List;

import org.hibernate.Transaction;

import org.hibernate.Query;
import org.hibernate.Session;
import com.mri.vo.Patient;

public class PatientDAO extends BaseDAO implements IPatientDAO{
	
	@SuppressWarnings("unchecked")
	public List<Patient> findAllPatient(){
		List<Patient> patients = null;
		Transaction tx = null;
		Session session = null;
		try{
			session = getSession();
			tx = session.beginTransaction();
			String hql = "from Patient p";
			Query query = session.createQuery(hql);
			patients = query.list();
			tx.commit();
			return patients;
		}catch(Exception e){
			 if(tx != null){
				 tx.rollback();
			 } 
			 e.printStackTrace();
		}finally{
			session.close();
		}
		return patients;
	}
	
/**	public boolean addNewPatient(Patient p){
		Transaction tx = null;
		Session session = null;
		try{
			session = getSession();
			tx=session.beginTransaction();
			session.save(p);
			tx.commit();
			return true;
			
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
			
		}finally{
			session.close();
			
		}
		return false;

	}
	**/
	@SuppressWarnings("unchecked")
	public List<Patient> addNewPatient(Patient p){
		Transaction tx = null;
		Session session = null;
		List<Patient> list = null;
		try{
			session = getSession();
			tx = session.beginTransaction();
			session.save(p);
			tx.commit();
			String hql = "from Patient p";
			Query query = session.createQuery(hql);
			list = query.list();
			return list;
			
		}catch(Exception e){
			if(tx!=null)
				tx.rollback();
			e.printStackTrace();
				
			
		}finally{
			session.close();
		}
		return list;
	}

/*	public boolean deletePatient(Integer id){
		Transaction tx = null;
		Session session = null;
		try{
			session = getSession();
			tx = session.beginTransaction();
			Patient p = (Patient)session.get(Patient.class,id);
			session.delete(p);
			tx.commit();
			return true;
			
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
			
		}finally{
			session.close();
			
		}
		return false;
	}
	*/
	@SuppressWarnings("unchecked")
	public List<Patient> deletePatient(Integer id){
		Transaction tx = null;
		Session session = null;
		List<Patient> list = null;
		try{
			session = getSession();
			tx = session.beginTransaction();
			Patient p = (Patient)session.get(Patient.class, id);
			session.delete(p);
			tx.commit();
			String hql = "from Patient p";
			Query query = session.createQuery(hql);
			list = query.list();
			return list;
			
		}catch(Exception e){
			if(tx!=null)
				tx.rollback();
				e.printStackTrace();
			
		}finally{
			session.close();
			
		}
		return list;
		
	}
	@SuppressWarnings("unchecked")
	public List<Patient> getPatientByName(String name){
		Session session = null;
		session = getSession();
		List<Patient> patients = null;
		String hql="from Patient p where p.name = ?";
		Query query2 = session.createQuery(hql);
		query2.setParameter(0, name);
		patients = query2.list();
		return patients;

	}
	@SuppressWarnings("unchecked")
	public List<Patient> getPatientByMRN(String mrn){
		Session session = null;
		session = getSession();
		List<Patient> patients = null;
		String hql="from Patient p where p.mrn = ?";
		Query query2 = session.createQuery(hql);
		query2.setParameter(0, mrn);
		patients = query2.list();
		return patients;
	}
}
