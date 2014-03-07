package adins.ace.taps.form.assignment;

import org.apache.struts.action.ActionForm;

@SuppressWarnings("serial")
public class NewAssignmentForm extends ActionForm{
	private String task;

	public String getTask() {
		return task;
	}

	public void setTask(String task) {
		this.task = task;
	}
	
}
