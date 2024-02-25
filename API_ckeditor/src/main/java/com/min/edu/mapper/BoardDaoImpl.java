package com.min.edu.mapper;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.edu.vo.BoardVo;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class BoardDaoImpl implements IBoardDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	private final String NS = "com.min.edu.mapper.BoardDaoImpl.";
	
	@Override
	public List<BoardVo> boardList() {
		log.info("@Repository 게시글 전체조회");
		return session.selectList(NS+"boardList");
	}

	@Override
	public BoardVo boardDetail(String seq) {
		log.info("@Repository 게시글 상세조회: {}", seq);
		return session.selectOne(NS+"boardDetail", seq);
	}

	@Override
	public int writeBoard(BoardVo vo) {
		log.info("@Repository 게시글 입력: {}", vo);
		return session.insert(NS+"writeBoard", vo);
	}
	
	

}
