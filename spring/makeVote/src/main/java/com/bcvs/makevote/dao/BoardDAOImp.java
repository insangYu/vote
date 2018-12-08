package com.bcvs.makevote.dao;

import java.util.List;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import com.bcvs.makevote.domain.BoardDTO;
import org.springframework.stereotype.Repository;



@Repository
public class BoardDAOImp implements BoardDAO {

	@Inject
    private SqlSession sqlSession;
    
    private static String namespace = "mapper.boardMapper";
	
  //�Խ����߰�
    @Override
    public void create(BoardDTO vo) throws Exception {
        
        sqlSession.insert(namespace+".insertBoard", vo);
 
    }
    
    //�Խ��Ǻ���
    @Override
    public List<BoardDTO> listAll() throws Exception {
        
        sqlSession.selectList(namespace+".listBoard");
        return sqlSession.selectList(namespace+".listBoard"); 

    }
    
    //�Խ��� ��
    @Override
    public BoardDTO read(Integer b_no) throws Exception {
        sqlSession.selectOne(namespace+".detailBoard", b_no);
        return null;
    }
 
    //�Խ��� ����
    @Override
    public void delete(Integer b_no) throws Exception {
        sqlSession.delete(namespace+".deleteBoard", b_no);
 
    }
 
    //�Խ��� ����
    @Override
    public void update(BoardDTO vo) throws Exception {
        sqlSession.update(namespace+".updateBoard", vo);
 
    }
 
}
