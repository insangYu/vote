package com.bcvs.makevote.service;

import java.util.List;

import com.bcvs.makevote.domain.BoardDTO;

public interface BoardService {
	
	public void create(BoardDTO vo) throws Exception;
    
    public List<BoardDTO> listAll() throws Exception;
    
    public BoardDTO read(Integer b_no) throws Exception;
    
    public void delete(Integer b_no) throws Exception;
    
    public void update(BoardDTO vo) throws Exception;

}
