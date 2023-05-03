package com.kh.soboroo.admin.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.soboroo.admin.model.vo.Admin;
import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.notice.model.vo.Notice;

@Repository
public class AdminDao {
	
	// 공지사항 목록 관리
	public ArrayList<Notice> selectNoticeList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
				int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
				
			
				int limit = pi.getBoardLimit();
				
				RowBounds rowBounds = new RowBounds(offset, limit);
				
				return (ArrayList)sqlSession.selectList("adminMapper.selectNoticeList", null, rowBounds);
	}
	
	//  관리자 공지사항 관리 조회수 
	
	public int selectNoticeListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.selectNoticeListCount");
	}
	
	
	// 게시판 목록 관리
	public ArrayList<Board> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("adminMapper.selectBoardList", null, rowBounds);
				
	}
	
	
	// 관리자 게시판 관리 조회수 
	public int selectBoardListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.selectBoardListCount");
	}
	
	

}
