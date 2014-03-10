package adins.ace.taps.manager;

import java.io.IOException;
import java.sql.SQLException;

import adins.ace.taps.bean.organization.OrganizationBean;
import adins.ace.taps.ibatis.IbatisHelper;

import com.ibatis.sqlmap.client.SqlMapClient;



public class organizationManager {
	public SqlMapClient ibatisSqlMap = null;

	public organizationManager() {
		this.ibatisSqlMap = IbatisHelper.getSqlMapInstance();
	}

	
	public void submitInsert(OrganizationBean eBean) throws SQLException, IOException {

		try {
			ibatisSqlMap.startTransaction();
			ibatisSqlMap.insert("organization.insertOrganization", eBean);
			ibatisSqlMap.commitTransaction();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ibatisSqlMap.endTransaction();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
