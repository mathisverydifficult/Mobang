package com.finalproject.mobang.admin.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalproject.mobang.admin.dto.QnaBoardDto;

@Repository
public class QnaBoardDaoImpl implements QnaBoardDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public List<QnaBoardDto> selectList() {
		List<QnaBoardDto> list = new ArrayList<QnaBoardDto>();
		try {
			list = sqlSessionTemplate.selectList(NAMESPACE + "selectList");
		} catch (Exception e) {
			System.out.println("[error] Qna selectList");
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public QnaBoardDto selectOne(int seqQ) {
		QnaBoardDto dto = null;
		
		try {
			dto = sqlSessionTemplate.selectOne(NAMESPACE+"selectOne",seqQ);
		} catch (Exception e) {
			System.out.println("[error] : Qna  selectOne");
			e.printStackTrace();
		}
		
		return dto;
	}


	@Override
	public int insert(QnaBoardDto dto) {
		int res=0;
		
		try {
			res = sqlSessionTemplate.insert(NAMESPACE+"insert",dto);
			
			
		} catch (Exception e) {
			System.out.println("[error] : insert ");
			e.printStackTrace();
		}
		
		return res;
	}


	@Override
	public int update(QnaBoardDto dto) {
		int res =0;
		
		try {
			res = sqlSessionTemplate.update(NAMESPACE+"update",dto);
		} catch (Exception e) {
			System.out.println("[error] : update");
			e.printStackTrace();
		}
		
		return res;
	}


	@Override
	public int delete(int seqQ) {
		int res =0;
		
		try {
			res = sqlSessionTemplate.delete(NAMESPACE+"delete",seqQ);
		} catch (Exception e) {
			System.out.println("[error] : delete");
			e.printStackTrace();
		}
		return res;
	}

}
