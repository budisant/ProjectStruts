package adins.ace.taps.form.report;

import org.apache.struts.action.ActionForm;

@SuppressWarnings("serial")
public class ReportForm extends ActionForm {
	private String task;
	private String search;
	private String value;
	private String periode;

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

	public String getPeriode() {
		return periode;
	}

	public void setPeriode(String periode) {
		this.periode = periode;
	}

}
