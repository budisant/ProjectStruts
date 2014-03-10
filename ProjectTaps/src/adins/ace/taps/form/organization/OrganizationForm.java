package adins.ace.taps.form.organization;

import java.util.List;

import org.apache.struts.action.ActionForm;

@SuppressWarnings("serial")
public class OrganizationForm extends ActionForm {
	private String task;
	private String search;
	private String value;
	private String sessionUserDomain;
	private List listOrganizations;

	public String getTask() {
		return task;
	}

	public String getSessionUserDomain() {
		return sessionUserDomain;
	}

	public void setSessionUserDomain(String sessionUserDomain) {
		this.sessionUserDomain = sessionUserDomain;
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

	public List getListOrganizations() {
		return listOrganizations;
	}

	public void setListOrganizations(List listOrganizations) {
		this.listOrganizations = listOrganizations;
	}

}
