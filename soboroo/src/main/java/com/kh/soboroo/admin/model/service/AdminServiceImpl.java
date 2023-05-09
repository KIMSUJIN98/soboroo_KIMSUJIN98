package com.kh.soboroo.admin.model.service;

import java.util.ArrayList;



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.soboroo.admin.model.dao.AdminDao;
import com.kh.soboroo.admin.model.vo.AdminNotice;
import com.kh.soboroo.admin.model.vo.AdminBoard;
import com.kh.soboroo.admin.model.vo.AdminMember;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.member.model.vo.Member;


@Service
public class AdminServiceImpl implements AdminService {
	
	
	@Autowired
	private AdminDao aDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<AdminNotice> selectNoticeList(PageInfo pi) {
		
		return aDao.selectNoticeList(sqlSession, pi);
		
	}

	@Override
	public int selectNoticeListCount() {
		return aDao.selectNoticeListCount(sqlSession);
	}

	@Override
	public ArrayList<AdminBoard> selectBoardList(PageInfo pi) {
		
		return aDao.selectBoardList(sqlSession,pi);
	}

	@Override
	public int selectBoardListCount() {
		
		return aDao.selectBoardListCount(sqlSession);
	}

	
	@Override
	public ArrayList<AdminMember> selectMemberList(PageInfo pi) {
	
		return aDao.selectMemberList(sqlSession,pi);
	}

	@Override
	public int updateMem(Member m) {

		int result = aDao.updateMem(sqlSession,m);
		
		return result;
	}

	@Override
	public ArrayList<AdminMember> selectSusMemberList(PageInfo pi) {
		
		return aDao.selectSusMemberList(sqlSession, pi);
	}
	
	
	

}
