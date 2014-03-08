package adins.ace.taps.form.employee;


import java.util.List;

import org.apache.struts.action.ActionForm;


@SuppressWarnings("serial")
public class EmployeeForm extends ActionForm{
	private String task;
	private List listEmployees;

	public List getListEmployees() {
		return listEmployees;
	}

	public void setListEmployees(List listEmployees) {
		this.listEmployees = listEmployees;
	}	
	
	public String getTask() {
		return task;
	}
	public void setTask(String task) {
		this.task = task;
	}
	
}
