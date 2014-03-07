package adins.ace.taps.module;

import java.util.Hashtable;

import javax.naming.Context;
import javax.naming.NamingException;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;

public class LoginModule {
	public LoginModule(){}
	public boolean getAuthenticate(String username,String password){
		boolean pass = false;
		Hashtable<String, String> env = new Hashtable<String, String>();
		env.put(Context.INITIAL_CONTEXT_FACTORY,
				"com.sun.jndi.ldap.LdapCtxFactory");
		env.put(Context.SECURITY_AUTHENTICATION, "simple");
		env.put(Context.SECURITY_PRINCIPAL, username
				+ "@nu-ace.ad-ins.com");
		env.put(Context.SECURITY_CREDENTIALS, password);
		env.put(Context.PROVIDER_URL, "ldap://ace-router:389");
		DirContext ctx = null;
		try {
			ctx = new InitialDirContext(env);
			if (!ctx.equals(null)) {
				pass = true;
			}
		} catch (NamingException ex) {
			System.out.println(ex.toString());
		}
		return pass;
	}
}
