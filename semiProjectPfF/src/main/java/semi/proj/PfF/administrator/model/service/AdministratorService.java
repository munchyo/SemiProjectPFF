package semi.proj.PfF.administrator.model.service;

import java.util.ArrayList;
import java.util.Date;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import semi.proj.PfF.administrator.model.DAO.AdministratorDAO;

@Service
public class AdministratorService {
	
	@Autowired
	AdministratorDAO aDAO;
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public ArrayList<Integer> selectNumPayer(Date oneMonthAgo) {
		return aDAO.selectNumPayer(sqlSession, oneMonthAgo);
	}

	public ArrayList<Integer> selectNumPay(Date oneMonthAgo) {
		return aDAO.selectNumPay(sqlSession, oneMonthAgo);
	}

	public ArrayList<Date> selectDate(Date oneMonthAgo) {
		return aDAO.selectDate(sqlSession, oneMonthAgo);
	}

	public ArrayList<Integer> selectSumPrice() {
		return aDAO.selectSumPrice(sqlSession);
	}

	public ArrayList<Integer> selectAvgPrice() {
		return aDAO.selectAvgPrice(sqlSession);
	}

	public ArrayList<Date> selectAmountPayDate() {
		return aDAO.selectAmountPayDate(sqlSession);
	}
	
}
