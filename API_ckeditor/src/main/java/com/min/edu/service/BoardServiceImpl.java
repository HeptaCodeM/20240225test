package com.min.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.min.edu.mapper.IBoardDao;
import com.min.edu.vo.BoardVo;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class BoardServiceImpl implements IBoardService {
	
	@Autowired
	private IBoardDao dao;
	
	@Override
	public List<BoardVo> boardList() {
		log.info("@Service 게시글 전체조회");
		return dao.boardList();
	}

	@Override
	public BoardVo boardDetail(String seq) {
		log.info("@Service 게시글 상세조회: {}", seq);
		return dao.boardDetail(seq);
	}

	@Override
	public int writeBoard(BoardVo vo) {
		log.info("@Service 게시글 입력: {}", vo);
		return dao.writeBoard(vo);
	}
	
	

}
