/*http://www.developerscrappad.com/963/java/jndi/java-jndi-ldap-windows-active-directory-authentication-organizational-unit-group-and-other-information-access/
 */

package adins.ace.action;

import java.util.Hashtable;

import javax.naming.*;
import javax.naming.directory.*;
import javax.servlet.http.*;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import adins.ace.form.FormEmp;

public class ActionStruts extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		FormEmp tForm = (FormEmp) form;

		// HttpSession session = request.getSession(true);
		if ("login".equals(tForm.getTask())) {
			boolean pass = false;
			if (!"".equals(tForm.getUsername())
					&& !"".equals(tForm.getPassword())) {
				
				String username = tForm.getUsername();
				String password = tForm.getPassword();
				// //////////////////////////
				Hashtable<String, String> env = new Hashtable<String, String>();
				env.put(Context.INITIAL_CONTEXT_FACTORY,
						"com.sun.jndi.ldap.LdapCtxFactory");
				env.put(Context.SECURITY_AUTHENTICATION, "simple");
				env.put(Context.SECURITY_PRINCIPAL, username
						+ "@nu-ace.ad-ins.com");
				env.put(Context.SECURITY_CREDENTIALS, password);
				env.put(Context.PROVIDER_URL, "ldap://192.168.10.1:389");
				DirContext ctx;

				try {
					ctx = new InitialDirContext(env);
					if (!ctx.equals(null)) {
						pass = true;
					}
				} catch (NamingException ex) {
					System.out.println(ex.toString());
				}
				tForm.setPassword("");
				tForm.setUsername("");
			}
			
			// //////////////////////////
			System.out.println(pass);
			return mapping.findForward("Welcome");
		} else {
			return mapping.findForward("Welcome");
		}
	}
}