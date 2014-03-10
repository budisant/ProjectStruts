package adins.ace.taps.manager;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import adins.ace.taps.bean.organization.OrganizationBean;
import adins.ace.taps.ibatis.IbatisHelper;

import com.ibatis.sqlmap.client.SqlMapClient;



public class OrganizationManager {
	public SqlMapClient ibatisSqlMap = null;

	public OrganizationManager() {
		this.ibatisSqlMap = IbatisHelper.getSqlMapInstance();
	}

	public List getAllOrganizations(){
		List orgList = null;
		try {
			ibatisSqlMap.startTransaction();
			orgList = ibatisSqlMap.queryForList("organization.getAllOrganization", null);			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			try {
				ibatisSqlMap.endTransaction();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return orgList;		
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
