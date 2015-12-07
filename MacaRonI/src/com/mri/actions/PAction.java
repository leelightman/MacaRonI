package com.mri.actions;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.mri.vo.Patient;
import com.mri.service.Impl.IPatientService;
import com.opensymphony.xwork2.ActionSupport;
import com.mri.localvv.Volume_Viewer;
@SuppressWarnings("serial")
public class PAction extends ActionSupport implements ServletRequestAware{
	 private HttpServletRequest request = null;
	 private IPatientService patientService = null;
	 private String name = null;
		private Integer id = null;
		private String mrn = null;
		private int age = 0;
		private String gender = null;
		private String ftype = null;
		private String file = null;
		private String tst = null;
		private String fpath =null;
		public String getTst(){
			return tst;
		}
		public void setTst(String tst){
			this.tst = tst;
		}
		public Integer getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getMrn() {
			return mrn;
		}
		public void setMrn(String mrn) {
			this.mrn = mrn;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public int getAge() {
			return age;
		}
		public void setAge(int age) {
			this.age = age;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getFtype() {
			return ftype;
		}
		public void setFtype(String ftype) {
			this.ftype = ftype;
		}
		public String getFile() {
			return file;
		}
		public void setFile(String file) {
			this.file = file;
		}
	 
	 
	 public IPatientService getPatientService(){
		 return patientService;
	 }
	 public void setPatientService(IPatientService patientService){
		 this.patientService = patientService;
	 }
	 public String findAllPatient(){
		 List<Patient> list = getPatientService().findAllPatient();
		 if(list==null||list.size()<1){
			 System.out.println("list is empty");
			 return ERROR;
			 
		 }
		 else{
			 	//System.out.println("using src");
				 request.setAttribute("list", list);
				 return SUCCESS;
			 }
		 

	 }
	 
	 public String addNewPatient(){
		 Patient patient = new Patient();
		 patient.setAge(age);
		 patient.setFile(file);
		 patient.setFtype(ftype);
		 patient.setGender(gender);
		 patient.setMrn(mrn);
		 patient.setName(name);
		 List<Patient> list = getPatientService().addNewPatient(patient);
		 if(list==null||list.size()<1){
			 System.out.println("list is empty");
			 return ERROR;
			 
		 }
		 else{
				 request.setAttribute("list", list);
				 return SUCCESS;
			 }

	 }
	 
	/* public String deletePatient(){
		 String id = request.getParameter("id");
		 if(getPatientService().deletePatient(Integer.valueOf(id))){
			 return SUCCESS;
		 }
		 return ERROR;
	 }*/
	 public String deletePatient(){
		 String id = request.getParameter("id");
		 List<Patient> list = getPatientService().deletePatient(Integer.valueOf(id));
		 if(list==null||list.size()<1){
			 System.out.println("list is empty");
			 return ERROR;
			 
		 }
		 else{
				 request.setAttribute("list", list);
				 return SUCCESS;
			 }
	 }
	 
	 public String generateView(){
		 //System.out.println("111"+fpath);
		 fpath = request.getParameter("fpath");
		 Volume_Viewer.create(fpath);
		 return SUCCESS;
	 }

	 public String getPatientInfo(){
		 String id = request.getParameter("id");
		 List<Patient> list = getPatientService().getPatientByID(Integer.valueOf(id));
		 if(list==null||list.size()<1){
			 System.out.println("list is empty");
			 return ERROR;
			 
		 }
		 else{
				 request.setAttribute("list", list);
				 return SUCCESS;
			 }
	 }
	 public String findPatientByName(){
		 Patient p = new Patient();
		 p.setName(name);
		 List<Patient> list = getPatientService().getPatientByName(p.getName());
		 if(list==null||list.size()<1){
			 System.out.println("No search results");
			 return ERROR;
		 }
		 else{
			 request.setAttribute("list", list);
			 //System.out.println("Name:"+list.get(0).getName());
			 return SUCCESS;
			 }
		 }
	 public String findPatientByMRN(){
		 Patient p = new Patient();
		 p.setMrn(mrn);
		 List<Patient> list = getPatientService().getPatientByMRN(p.getMrn());
		 if(list==null||list.size()<1){
			 System.out.println("No search results");
			 return ERROR;
		 }
		 else{
			 request.setAttribute("list", list);
			
			 return SUCCESS;
			 }
		 
	 }
	 public String findPatient(){
		 //System.out.println(tst);
		 List<Patient> list = getPatientService().getPatient(tst);
		 if(list==null||list.size()<1){
			 System.out.println("No search results");
			 return ERROR;
		 }
		 else{
			 request.setAttribute("list", list);
			
			 return SUCCESS;
			 }
	 }

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		
	}
	public String getFpath() {
		return fpath;
	}
	public void setFpath(String fpath) {
		this.fpath = fpath;
	}

}
