/*http://www.developerscrappad.com/963/java/jndi/java-jndi-ldap-windows-active-directory-authentication-organizational-unit-group-and-other-information-access/
 */

package adins.ace.taps.action;

import javax.servlet.http.*;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import adins.ace.taps.form.employee.EmployeeForm;
import adins.ace.taps.form.menu.MenuForm;
import adins.ace.taps.manager.EmployeeManager;

public class EmployeeAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		EmployeeForm mForm = (EmployeeForm) form;
		//HttpSession session = request.getSession(true);
		if ("ListEmployee".equals(mForm.getTask())){
			EmployeeManager mMan = new EmployeeManager();
			mForm.setListEmployees(mMan.getAllEmployees());
			return mapping.findForward("ListEmployee");
		}
		if ("edit".equals(mForm.getTask())) {
			return mapping.findForward("Edit");
		}
		
		return mapping.findForward("Dashboard");
	}
}
