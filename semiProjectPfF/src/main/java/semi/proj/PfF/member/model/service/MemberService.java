package semi.proj.PfF.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import semi.proj.PfF.member.model.dao.MemberDAO;
import semi.proj.PfF.member.model.vo.KakaoMember;
import semi.proj.PfF.member.model.vo.Member;

@Service
public class MemberService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MemberDAO mDAO;

	public Member login(Member login) {
		return mDAO.login(sqlSession, login);
	}

	public int enroll(Member enrollUser) {
		return mDAO.enroll(sqlSession, enrollUser);
	}

	public int checkId(String id) {
		return mDAO.checkId(sqlSession, id);
	}

	public int checkNickName(String nickname) {
		return mDAO.checkNickName(sqlSession, nickname);
	}

	public int checkEmail(String email) {
		return mDAO.checkEmail(sqlSession, email);
	}

	public KakaoMember selectKakaoMember(KakaoMember loginUser) {
		return mDAO.selectKakaoMember(sqlSession, loginUser);
	}

	public int enrollKakao(KakaoMember loginUser) {
		return mDAO.enrollKakao(sqlSession, loginUser);
	}

}
