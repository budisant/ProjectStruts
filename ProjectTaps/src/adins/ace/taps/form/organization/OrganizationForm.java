package adins.ace.taps.form.organization;

import org.apache.struts.action.ActionForm;

@SuppressWarnings("serial")
public class OrganizationForm extends ActionForm {
	private String task;
	private String search;
	private String value;

	public String getTask() {
		return task;
	}

	public void setTask(String task) {
		this.task = task;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}
