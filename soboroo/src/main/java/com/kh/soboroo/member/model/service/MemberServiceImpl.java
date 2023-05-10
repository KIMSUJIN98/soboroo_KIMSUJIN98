package com.kh.soboroo.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.soboroo.member.model.dao.MemberDao;
import com.kh.soboroo.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public Member loginMember(Member m) {
		
		// 매일 sqlSession 객체 만들고, MemberDao 생성해서 호출함
		// 이제는 의존성 주입으로 하겠음
		
		Member loginUser = mDao.loginMember(sqlSession, m);
		
		// close 도 스프링이 알아서 해준다.
		
		return loginUser;
	}

	@Override
	public int insertMember(Member m) {
		int result = mDao.insertMember(sqlSession, m);
		return result;
	}
	
	@Override
	public int idCheck(String checkId) {
		return mDao.idCheck(sqlSession, checkId);
	}


}
