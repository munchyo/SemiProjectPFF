package semi.proj.PfF.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import semi.proj.PfF.member.model.vo.Member;

@Repository
public class MemberDAO {

	public Member login(SqlSessionTemplate sqlSession, Member login) {
		return sqlSession.selectOne("memberMapper.login", login);
	}

	public int enroll(SqlSessionTemplate sqlSession, Member enrollUser) {
		return sqlSession.insert("memberMapper.enroll", enrollUser);
	}

	public int checkId(SqlSessionTemplate sqlSession, String id) {
		return sqlSession.selectOne("memberMapper.checkId", id);
	}

	public int checkNickName(SqlSessionTemplate sqlSession, String nickname) {
		return sqlSession.selectOne("memberMapper.checkNickName", nickname);
	}
	

}
