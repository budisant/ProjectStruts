package adins.ace.taps.manager;

import java.sql.SQLException;
import java.util.List;

import adins.ace.taps.bean.specialAppraisal.SpecialAppraisalBean;
import adins.ace.taps.ibatis.IbatisHelper;

import com.ibatis.sqlmap.client.SqlMapClient;


public class SpecialAppraisalManager {

	public SqlMapClient ibatsSqlMap = null;
	
	public SpecialAppraisalManager(){
		this.ibatsSqlMap = IbatisHelper.getSqlMapInstance();
	}

	public List getAll(){
		List list = null;
		SpecialAppraisalBean bean = new SpecialAppraisalBean();
		try {
			ibatsSqlMap.startTransaction();
			list = ibatsSqlMap.queryForList("SpecialAppraisal.getAllSpecialAppraisal",null);			
			ibatsSqlMap.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try{
				ibatsSqlMap.endTransaction();
			}
			catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return list;
	}
	
	public List getDetail(Integer starId){
		List list = null;
		SpecialAppraisalBean bean = new SpecialAppraisalBean();
		try {
			ibatsSqlMap.startTransaction();
			list = ibatsSqlMap.queryForList("SpecialAppraisal.getDetailSpecialAppraisal",starId);			
			ibatsSqlMap.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try{
				ibatsSqlMap.endTransaction();
			}
			catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return list;
	}
	
	public void Insert(SpecialAppraisalBean Bean){
		try {
			ibatsSqlMap.startTransaction();
			ibatsSqlMap.insert("SpecialAppraisal.insertSpecialAppraisal", Bean);
			ibatsSqlMap.commitTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try{
				ibatsSqlMap.endTransaction();
			}
			catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}
}