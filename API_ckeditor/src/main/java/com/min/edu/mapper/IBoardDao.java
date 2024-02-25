package com.min.edu.mapper;

import java.util.List;

import com.min.edu.vo.BoardVo;

public interface IBoardDao {
	
	public List<BoardVo> boardList();
	
	public BoardVo boardDetail(String seq);
	
	public int writeBoard(BoardVo vo);

}
