package com.mri.dao.Impl;

import java.util.ArrayList;
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
	public List<Patient> getPatientByID(Integer id){
		Session session = null;
		session = getSession();
		List<Patient> patients = new ArrayList<Patient>();
		String hql = "from Patient p where p.id = ?";
		Query query  = session.createQuery(hql);
		query.setParameter(0, id);
		patients = query.list();
		return patients;
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
	@SuppressWarnings("unchecked")
	public List<Patient> getPatient(String tst){
		Session session = null;
		session = getSession();
		List<Patient> p1 = new ArrayList<Patient>();
		List<Patient> p2 = new ArrayList<Patient>();
		List<Patient> patients = new ArrayList<Patient>();
		String hq1 = "from Patient p where p.name like :name";
		Query query1 = session.createQuery(hq1);
		query1.setString("name","%"+tst+"%");
		p1 = query1.list();
		String hq2 = "from Patient p where p.mrn like :mrn";
		Query query2 = session.createQuery(hq2);
		query2.setString("mrn", tst);
		p2 = query2.list();
		if(p1 == null||p1.size()<1){
			System.out.println("p1 is empty");
		}else{
			patients.addAll(p1);
		}
		if(p2 == null||p2.size()<1){
			System.out.println("p2 is empty");
		}else{
			patients.addAll(p2);
		}
		return patients;
	}
}
