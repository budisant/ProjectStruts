package adins.ace.taps.bean.employee;

import org.apache.struts.action.ActionForm;

@SuppressWarnings("serial")
public class NewSelfAssignmentBean extends ActionForm{
	private String createBy;
	private String assignmentDueDate;
	private String assignmentType;
	private String assignBy;
	private String reportTo;
	private String activityType;
	private String reffTaskCode;
	private String manHours;
	private String description;
	public String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	public String getAssignmentDueDate() {
		return assignmentDueDate;
	}
	public void setAssignmentDueDate(String assignmentDueDate) {
		this.assignmentDueDate = assignmentDueDate;
	}
	public String getAssignmentType() {
		return assignmentType;
	}
	public void setAssignmentType(String assignmentType) {
		this.assignmentType = assignmentType;
	}
	public String getAssignBy() {
		return assignBy;
	}
	public void setAssignBy(String assignBy) {
		this.assignBy = assignBy;
	}
	public String getReportTo() {
		return reportTo;
	}
	public void setReportTo(String reportTo) {
		this.reportTo = reportTo;
	}
	public String getActivityType() {
		return activityType;
	}
	public void setActivityType(String activityType) {
		this.activityType = activityType;
	}
	public String getReffTaskCode() {
		return reffTaskCode;
	}
	public void setReffTaskCode(String reffTaskCode) {
		this.reffTaskCode = reffTaskCode;
	}
	public String getManHours() {
		return manHours;
	}
	public void setManHours(String manHours) {
		this.manHours = manHours;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
